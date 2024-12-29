import std.stdio;

import bindbc.joltc;
import bindbc.joltc.funcs;
import bindbc.joltc.loader;
import bindbc.loader.sharedlib;

enum Layers
{
	NON_MOVING = 0,
	MOVING = 1,
	NUM_LAYERS = 2,
}

enum BroadPhaseLayers
{
	NON_MOVING = 0,
	MOVING = 1,
	NUM_LAYERS = 2
}

void main()
{
	loadJolt();
	auto a = jph_init();
	auto jobSystem = jph_jobSystemThreadPool_Create(null);
	// We use only 2 layers: one for non-moving objects and one for moving objects
	JPH_ObjectLayerPairFilter* objectLayerPairFilterTable = jph_objectLayerPairFilterTable_Create(2);
	jph_objectLayerPairFilterTable_EnableCollision(objectLayerPairFilterTable, Layers.NON_MOVING, Layers
			.MOVING);
	jph_objectLayerPairFilterTable_EnableCollision(objectLayerPairFilterTable, Layers.MOVING, Layers
			.NON_MOVING);

	// We use a 1-to-1 mapping between object layers and broadphase layers
	JPH_BroadPhaseLayerInterface* broadPhaseLayerInterfaceTable = jph_broadPhaseLayerInterfaceTable_Create(2, 2);
	jph_broadPhaseLayerInterfaceTable_MapObjectToBroadPhaseLayer(
		broadPhaseLayerInterfaceTable, Layers.NON_MOVING, BroadPhaseLayers.NON_MOVING);
	jph_broadPhaseLayerInterfaceTable_MapObjectToBroadPhaseLayer(
		broadPhaseLayerInterfaceTable, Layers.MOVING, BroadPhaseLayers.MOVING);

	JPH_ObjectVsBroadPhaseLayerFilter* objectVsBroadPhaseLayerFilter = jph_objectVsBroadPhaseLayerFilterTable_Create(
		broadPhaseLayerInterfaceTable, 2, objectLayerPairFilterTable, 2);

	JPH_PhysicsSystemSettings settings = {};
	settings.maxBodies = 65536;
	settings.numBodyMutexes = 0;
	settings.maxBodyPairs = 65536;
	settings.maxContactConstraints = 65536;
	settings.broadPhaseLayerInterface = broadPhaseLayerInterfaceTable;
	settings.objectLayerPairFilter = objectLayerPairFilterTable;
	settings.objectVsBroadPhaseLayerFilter = objectVsBroadPhaseLayerFilter;
	JPH_PhysicsSystem* system = jph_physicsSystem_Create(&settings);
	JPH_BodyInterface* bodyInterface = jph_physicsSystem_GetBodyInterface(system);

	JPH_BodyID floorId;

	// Next we can create a rigid body to serve as the floor, we make a large box
	// Create the settings for the collision volume (the shape). 
	// Note that for simple shapes (like boxes) you can also directly construct a BoxShape.
	JPH_Vec3 boxHalfExtents = {100.0f, 1.0f, 100.0f};
	JPH_BoxShape* floorShape = jph_boxShape_Create(&boxHalfExtents, JPH_DEFAULT_CONVEX_RADIUS);

	JPH_Vec3 floorPosition = {0.0f, -1.0f, 0.0f};
	JPH_BodyCreationSettings* floorSettings = jph_bodyCreationSettings_Create3(
		cast(const JPH_Shape*) floorShape,
		&floorPosition,
		null, // Identity, 
		JPH_MotionType_Static,
		Layers.NON_MOVING
	);

	// Create the actual rigid body
	floorId = jph_bodyInterface_CreateAndAddBody(bodyInterface, floorSettings, JPH_Activation_DontActivate);
	jph_bodyCreationSettings_Destroy(floorSettings);

	// Sphere
	JPH_BodyID sphereId;

	JPH_SphereShape* sphereShape = jph_sphereShape_Create(50.0f);
	JPH_Vec3 spherePosition = JPH_Vec3(0.0f, 2.0f, 0.0f);
	JPH_BodyCreationSettings* sphereSettings = jph_bodyCreationSettings_Create3(
		cast(const JPH_Shape*) sphereShape,
		&spherePosition,
		null, // Identity, 
		JPH_MotionType_Dynamic,
		Layers.MOVING
	);

	sphereId = jph_bodyInterface_CreateAndAddBody(bodyInterface, sphereSettings, JPH_Activation_Activate);
	jph_bodyCreationSettings_Destroy(sphereSettings);

	// Now you can interact with the dynamic body, in this case we're going to give it a velocity.
	// (note that if we had used CreateBody then we could have set the velocity straight on the body before adding it to the physics system)
	JPH_Vec3 sphereLinearVelocity = JPH_Vec3(0.0f, -5.0f, 0.0f);
	jph_bodyInterface_SetLinearVelocity(bodyInterface, sphereId, &sphereLinearVelocity);

	float cCharacterHeightStanding = 1.35f;
	float cCharacterRadiusStanding = 0.3f;
	float cCharacterHeightCrouching = 0.8f;
	float cCharacterRadiusCrouching = 0.3f;
	float cInnerShapeFraction = 0.9f;

	JPH_CapsuleShape* capsuleShape = jph_capsuleShape_Create(
		0.5f * cCharacterHeightStanding, cCharacterRadiusStanding);
	JPH_Vec3 position = JPH_Vec3(0, 0.5f * cCharacterHeightStanding + cCharacterRadiusStanding, 0);
	auto mStandingShape = jph_rotatedTranslatedShape_Create(&position, null, cast(
			JPH_Shape*) capsuleShape);

	JPH_CharacterVirtualSettings characterSettings;
	jph_characterVirtualSettings_Init(&characterSettings);
	characterSettings.base.shape = cast(const JPH_Shape*) mStandingShape;
	characterSettings.base.supportingVolume = JPH_Plane(JPH_Vec3(0, 1, 0), -cCharacterRadiusStanding); // Accept contacts that touch the lower sphere of the capsule
	JPH_RVec3 characterVirtualPosition = JPH_RVec3(-5.0f, 0, 3.0f);

	auto mAnimatedCharacterVirtual = jph_characterVirtual_Create(
		&characterSettings, &characterVirtualPosition, null, 0, system);

	// We simulate the physics world in discrete time steps. 60 Hz is a good rate to update the physics system.
	const float cDeltaTime = 1.0f / 60.0f;

	// Optional step: Before starting the physics simulation you can optimize the broad phase. This improves collision detection performance (it's pointless here because we only have 2 bodies).
	// You should definitely not call this every frame or when e.g. streaming in a new level section as it is an expensive operation.
	// Instead insert all new objects in batches instead of 1 at a time to keep the broad phase efficient.
	jph_physicsSystem_OptimizeBroadPhase(system);

	// Now we're ready to simulate the body, keep simulating until it goes to sleep
	uint32_t step = 0;
	while (jph_bodyInterface_IsActive(bodyInterface, sphereId))
	{
		// Next step
		++step;

		// Output current position and velocity of the sphere
		JPH_Vec3 velocity;

		jph_bodyInterface_GetCenterOfMassPosition(bodyInterface, sphereId, &position);
		jph_bodyInterface_GetLinearVelocity(bodyInterface, sphereId, &velocity);
		writeln("Step ",
			step,
			": Position = (",
			position.x,
			", ",
			position.y,
			", ", position.z,
			"), Velocity = (",
			velocity.x,
			", ", velocity.y,
			", ",
			velocity.z,
			")"
		);

		// If you take larger steps than 1 / 60th of a second you need to do multiple collision steps in order to keep the simulation stable. Do 1 collision step per 1 / 60th of a second (round up).
		const int cCollisionSteps = 1;

		// Step the world
		jph_physicsSystem_Update(system, cDeltaTime, cCollisionSteps, jobSystem);
	}

	// Remove the destroy sphere from the physics system. Note that the sphere itself keeps all of its state and can be re-added at any time.
	jph_bodyInterface_RemoveAndDestroyBody(bodyInterface, sphereId);

	// Remove and destroy the floor
	jph_bodyInterface_RemoveAndDestroyBody(bodyInterface, floorId);

	jph_jobSystem_Destroy(jobSystem);

	jph_physicsSystem_Destroy(system);
	jph_shutdown();

	writeln(system);
}
