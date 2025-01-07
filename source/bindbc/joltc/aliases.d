module bindbc.joltc.aliases;

import bindbc.joltc.types;

extern(C):

alias size_t = ulong;
alias __report_gsfailure = void function(uintptr_t);
alias __security_check_cookie = void function(uintptr_t);
alias __security_init_cookie = void function();
alias wchar_t = ushort;
alias __vcrt_bool = bool;
alias intptr_t = long;
alias ptrdiff_t = long;
alias __va_start = void function(char**, ...);
alias uintptr_t = ulong;
alias uintmax_t = ulong;
alias intmax_t = long;
alias uint_fast64_t = ulong;
alias uint_fast32_t = uint;
alias uint_fast16_t = uint;
alias uint_fast8_t = ubyte;
alias int_fast64_t = long;
alias int_fast32_t = int;
alias int_fast16_t = int;
alias int_fast8_t = byte;
alias uint_least64_t = ulong;
alias uint_least32_t = uint;
alias uint_least16_t = ushort;
alias uint_least8_t = ubyte;
alias int_least64_t = long;
alias int_least32_t = int;
alias int_least16_t = short;
alias int_least8_t = byte;
alias uint64_t = ulong;
alias uint32_t = uint;
alias uint16_t = ushort;
alias uint8_t = ubyte;
alias int64_t = long;
alias int32_t = int;
alias int16_t = short;
alias int8_t = byte;
alias max_align_t = double;
alias JPH_DebugRenderer_DrawWireUnitSphere = void function(JPH_DebugRenderer*, const(JPH_RMatrix4x4)*, JPH_Color, int);
alias JPH_DebugRenderer_DrawWireSphere = void function(JPH_DebugRenderer*, const(JPH_RVec3)*, float, JPH_Color, int);
alias JPH_DebugRenderer_DrawWireTriangle  = void function(JPH_DebugRenderer*, const(JPH_RVec3)*, const(JPH_RVec3)*, const(
        JPH_RVec3)*, JPH_Color) @nogc nothrow;
alias JPH_DebugRenderer_DrawPlane = void function(JPH_DebugRenderer*, const(JPH_RVec3)*, const(
        JPH_Vec3)*, JPH_Color, float);
alias JPH_DebugRenderer_DrawCoordinateSystem = void function(JPH_DebugRenderer*, const(
        JPH_RMatrix4x4)*, float);
alias JPH_DebugRenderer_DrawArrow = void function(JPH_DebugRenderer*, const(JPH_RVec3)*, const(
        JPH_RVec3)*, JPH_Color, float);
alias JPH_DebugRenderer_DrawMarker = void function(JPH_DebugRenderer*, const(JPH_RVec3)*, JPH_Color, float);
alias JPH_DebugRenderer_DrawWireBox2 = void function(JPH_DebugRenderer*, const(JPH_RMatrix4x4)*, const(
        JPH_AABox)*, JPH_Color);
alias JPH_DebugRenderer_DrawWireBox = void function(JPH_DebugRenderer*, const(JPH_AABox)*, JPH_Color);
alias JPH_DebugRenderer_DrawLine = void function(JPH_DebugRenderer*, const(JPH_RVec3)*, const(
        JPH_RVec3)*, JPH_Color);
alias JPH_DebugRenderer_NextFrame = void function(JPH_DebugRenderer*);
alias JPH_DebugRenderer_Destroy = void function(JPH_DebugRenderer*);
alias JPH_DebugRenderer_Create  = JPH_DebugRenderer* function(JPH_DebugRenderer_Procs, void*) @nogc nothrow;
alias JPH_CharacterContactListener_Destroy = void function(JPH_CharacterContactListener*);
alias JPH_CharacterContactListener_Create  = JPH_CharacterContactListener* function(
    JPH_CharacterContactListener_Procs, void*) @nogc nothrow;
alias JPH_CharacterVirtual_SetInnerBodyShape = void function(
    JPH_CharacterVirtual*, const(JPH_Shape)*);
alias JPH_CharacterVirtual_SetShape  = bool function(JPH_CharacterVirtual*, const(JPH_Shape)*, float, JPH_ObjectLayer, JPH_PhysicsSystem*, const(
        JPH_BodyFilter)*, const(JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_CharacterVirtual_UpdateGroundVelocity = void function(JPH_CharacterVirtual*);
alias JPH_CharacterVirtual_StickToFloor  = bool function(JPH_CharacterVirtual*, const(JPH_Vec3)*, JPH_ObjectLayer, JPH_PhysicsSystem*, const(
        JPH_BodyFilter)*, const(JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_CharacterVirtual_WalkStairs  = bool function(JPH_CharacterVirtual*, float, const(JPH_Vec3)*, const(JPH_Vec3)*, const(JPH_Vec3)*, const(JPH_Vec3)*, JPH_ObjectLayer, JPH_PhysicsSystem*, const(
        JPH_BodyFilter)*, const(JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_CharacterVirtual_CanWalkStairs = bool function(JPH_CharacterVirtual*, const(JPH_Vec3)*);
alias JPH_CharacterVirtual_RefreshContacts  = void function(JPH_CharacterVirtual*, JPH_ObjectLayer, JPH_PhysicsSystem*, const(
        JPH_BodyFilter)*, const(JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_CharacterVirtual_ExtendedUpdate  = void function(JPH_CharacterVirtual*, float, const(JPH_ExtendedUpdateSettings)*, JPH_ObjectLayer, JPH_PhysicsSystem*, const(
        JPH_BodyFilter)*, const(JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_CharacterVirtual_Update  = void function(JPH_CharacterVirtual*, float, JPH_ObjectLayer, JPH_PhysicsSystem*, const(
        JPH_BodyFilter)*, const(JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_CharacterVirtual_CancelVelocityTowardsSteepSlopes = void function(
    JPH_CharacterVirtual*, const(JPH_Vec3)*, JPH_Vec3*);
alias JPH_CharacterVirtual_GetInnerBodyID = JPH_BodyID function(const(JPH_CharacterVirtual)*);
alias JPH_CharacterVirtual_SetUserData = void function(JPH_CharacterVirtual*, uint64_t);
alias JPH_CharacterVirtual_GetUserData = uint64_t function(const(JPH_CharacterVirtual)*);
alias JPH_CharacterVirtual_SetShapeOffset = void function(JPH_CharacterVirtual*, const(JPH_Vec3)*);
alias JPH_CharacterVirtual_GetShapeOffset = void function(JPH_CharacterVirtual*, JPH_Vec3*);
alias JPH_CharacterVirtual_GetMaxHitsExceeded = bool function(JPH_CharacterVirtual*);
alias JPH_CharacterVirtual_SetHitReductionCosMaxAngle = void function(JPH_CharacterVirtual*, float);
alias JPH_CharacterVirtual_GetHitReductionCosMaxAngle = float function(JPH_CharacterVirtual*);
alias JPH_CharacterVirtual_SetMaxNumHits = void function(JPH_CharacterVirtual*, uint32_t);
alias JPH_CharacterVirtual_GetMaxNumHits = uint32_t function(JPH_CharacterVirtual*);
alias JPH_CharacterVirtual_GetCharacterPadding = float function(JPH_CharacterVirtual*);
alias JPH_CharacterVirtual_SetEnhancedInternalEdgeRemoval = void function(
    JPH_CharacterVirtual*, bool);
alias JPH_CharacterVirtual_GetEnhancedInternalEdgeRemoval = bool function(JPH_CharacterVirtual*);
alias JPH_CharacterVirtual_SetPenetrationRecoverySpeed = void function(
    JPH_CharacterVirtual*, float);
alias JPH_CharacterVirtual_GetPenetrationRecoverySpeed = float function(JPH_CharacterVirtual*);
alias JPH_CharacterVirtual_SetMaxStrength = void function(JPH_CharacterVirtual*, float);
alias JPH_CharacterVirtual_GetMaxStrength = float function(JPH_CharacterVirtual*);
alias JPH_CharacterVirtual_SetMass = void function(JPH_CharacterVirtual*, float);
alias JPH_CharacterVirtual_GetMass = float function(JPH_CharacterVirtual*);
alias JPH_CharacterVirtual_GetCenterOfMassTransform = void function(
    JPH_CharacterVirtual*, JPH_RMatrix4x4*);
alias JPH_CharacterVirtual_GetWorldTransform = void function(
    JPH_CharacterVirtual*, JPH_RMatrix4x4*);
alias JPH_CharacterVirtual_SetRotation = void function(JPH_CharacterVirtual*, const(JPH_Quat)*);
alias JPH_CharacterVirtual_GetRotation = void function(JPH_CharacterVirtual*, JPH_Quat*);
alias JPH_CharacterVirtual_SetPosition = void function(JPH_CharacterVirtual*, const(JPH_RVec3)*);
alias JPH_CharacterVirtual_GetPosition = void function(JPH_CharacterVirtual*, JPH_RVec3*);
alias JPH_CharacterVirtual_SetLinearVelocity = void function(
    JPH_CharacterVirtual*, const(JPH_Vec3)*);
alias JPH_CharacterVirtual_GetLinearVelocity = void function(JPH_CharacterVirtual*, JPH_Vec3*);
alias JPH_CharacterVirtual_SetListener = void function(JPH_CharacterVirtual*, JPH_CharacterContactListener*);
alias JPH_CharacterVirtual_Create  = JPH_CharacterVirtual* function(const(JPH_CharacterVirtualSettings)*, const(
        JPH_RVec3)*, const(JPH_Quat)*, uint64_t, JPH_PhysicsSystem*) @nogc nothrow;
alias JPH_CharacterVirtualSettings_Init = void function(JPH_CharacterVirtualSettings*);
alias JPH_Character_SetShape = void function(JPH_Character*, const(JPH_Shape)*, float, bool);
alias JPH_Character_SetLayer = void function(JPH_Character*, JPH_ObjectLayer, bool);
alias JPH_Character_GetLayer = JPH_ObjectLayer function(const(JPH_Character)*);
alias JPH_Character_GetWorldTransform = void function(JPH_Character*, JPH_RMatrix4x4*, bool);
alias JPH_Character_GetCenterOfMassPosition = void function(JPH_Character*, JPH_RVec3*, bool);
alias JPH_Character_SetRotation = void function(JPH_Character*, const(JPH_Quat)*, JPH_Activation, bool);
alias JPH_Character_GetRotation = void function(JPH_Character*, JPH_Quat*, bool);
alias JPH_Character_SetPosition = void function(JPH_Character*, const(JPH_RVec3)*, JPH_Activation, bool);
alias JPH_Character_GetPosition = void function(JPH_Character*, JPH_RVec3*, bool);
alias JPH_Character_SetPositionAndRotation = void function(JPH_Character*, const(JPH_RVec3)*, const(
        JPH_Quat)*, JPH_Activation, bool);
alias JPH_Character_GetPositionAndRotation = void function(JPH_Character*, JPH_RVec3*, JPH_Quat*, bool);
alias JPH_Character_GetBodyID = JPH_BodyID function(const(JPH_Character)*);
alias JPH_Character_AddImpulse = void function(JPH_Character*, const(JPH_Vec3)*, bool);
alias JPH_Character_AddLinearVelocity = void function(JPH_Character*, const(JPH_Vec3)*, bool);
alias JPH_Character_SetLinearVelocity = void function(JPH_Character*, const(JPH_Vec3)*, bool);
alias JPH_Character_GetLinearVelocity = void function(JPH_Character*, JPH_Vec3*);
alias JPH_Character_SetLinearAndAngularVelocity = void function(JPH_Character*, JPH_Vec3*, JPH_Vec3*, bool);
alias JPH_Character_PostSimulation = void function(JPH_Character*, float, bool);
alias JPH_Character_Activate = void function(JPH_Character*, bool);
alias JPH_Character_RemoveFromPhysicsSystem = void function(JPH_Character*, bool);
alias JPH_Character_AddToPhysicsSystem = void function(JPH_Character*, JPH_Activation, bool);
alias JPH_Character_Create  = JPH_Character* function(const(JPH_CharacterSettings)*, const(JPH_RVec3)*, const(
        JPH_Quat)*, uint64_t, JPH_PhysicsSystem*) @nogc nothrow;
alias JPH_CharacterSettings_Init = void function(JPH_CharacterSettings*);
alias JPH_CharacterBase_GetGroundUserData = uint64_t function(JPH_CharacterBase*);
alias JPH_CharacterBase_GetGroundSubShapeId = JPH_SubShapeID function(JPH_CharacterBase*);
alias JPH_CharacterBase_GetGroundBodyId = JPH_BodyID function(JPH_CharacterBase*);
alias JPH_CharacterBase_GetGroundMaterial = const(JPH_PhysicsMaterial)* function(JPH_CharacterBase*) @nogc nothrow;
alias JPH_CharacterBase_GetGroundVelocity = void function(JPH_CharacterBase*, JPH_Vec3*);
alias JPH_CharacterBase_GetGroundNormal = void function(JPH_CharacterBase*, JPH_Vec3*);
alias JPH_CharacterBase_GetGroundPosition = void function(JPH_CharacterBase*, JPH_RVec3*);
alias JPH_CharacterBase_IsSupported = bool function(JPH_CharacterBase*);
alias JPH_CharacterBase_GetGroundState = JPH_GroundState function(JPH_CharacterBase*);
alias JPH_CharacterBase_GetShape = const(JPH_Shape)* function(JPH_CharacterBase*) @nogc nothrow;
alias JPH_CharacterBase_IsSlopeTooSteep = bool function(JPH_CharacterBase*, const(JPH_Vec3)*);
alias JPH_CharacterBase_SetUp = void function(JPH_CharacterBase*, const(JPH_Vec3)*);
alias JPH_CharacterBase_GetUp = void function(JPH_CharacterBase*, JPH_Vec3*);
alias JPH_CharacterBase_SetMaxSlopeAngle = void function(JPH_CharacterBase*, float);
alias JPH_CharacterBase_GetCosMaxSlopeAngle = float function(JPH_CharacterBase*);
alias JPH_CharacterBase_Destroy = void function(JPH_CharacterBase*);
alias JPH_ContactSettings_SetRelativeAngularSurfaceVelocity = void function(
    JPH_ContactSettings*, JPH_Vec3*);
alias JPH_ContactSettings_GetRelativeAngularSurfaceVelocity = void function(
    JPH_ContactSettings*, JPH_Vec3*);
alias JPH_ContactSettings_SetRelativeLinearSurfaceVelocity = void function(
    JPH_ContactSettings*, JPH_Vec3*);
alias JPH_ContactSettings_GetRelativeLinearSurfaceVelocity = void function(
    JPH_ContactSettings*, JPH_Vec3*);
alias JPH_ContactSettings_SetIsSensor = void function(JPH_ContactSettings*, bool);
alias JPH_ContactSettings_GetIsSensor = bool function(const(JPH_ContactSettings)*);
alias JPH_ContactSettings_SetInvInertiaScale2 = void function(JPH_ContactSettings*, float);
alias JPH_ContactSettings_GetInvInertiaScale2 = float function(JPH_ContactSettings*);
alias JPH_ContactSettings_SetInvMassScale2 = void function(JPH_ContactSettings*, float);
alias JPH_BodyID = uint32_t;
alias JPH_SubShapeID = uint32_t;
alias JPH_ObjectLayer = uint16_t;
alias JPH_BroadPhaseLayer = uint8_t;
alias JPH_RVec3 = JPH_Vec3;
alias JPH_RMatrix4x4 = JPH_Matrix4x4;
alias JPH_Color = uint32_t;
alias JPH_CastRayResultCallback = void function(void*, const(JPH_RayCastResult)*);
alias JPH_RayCastBodyResultCallback = void function(void*, const(JPH_BroadPhaseCastResult)*);
alias JPH_CollideShapeBodyResultCallback = void function(void*, uint);
alias JPH_CollidePointResultCallback = void function(void*, const(JPH_CollidePointResult)*);
alias JPH_CollideShapeResultCallback = void function(void*, const(JPH_CollideShapeResult)*);
alias JPH_CastShapeResultCallback = void function(void*, const(JPH_ShapeCastResult)*);
alias JPH_CastRayCollector = float function(void*, const(JPH_RayCastResult)*);
alias JPH_RayCastBodyCollector = float function(void*, const(JPH_BroadPhaseCastResult)*);
alias JPH_CollideShapeBodyCollector = float function(void*, uint);
alias JPH_CollidePointCollector = float function(void*, const(JPH_CollidePointResult)*);
alias JPH_CollideShapeCollector = float function(void*, const(JPH_CollideShapeResult)*);
alias JPH_CastShapeCollector = float function(void*, const(JPH_ShapeCastResult)*);
alias JPH_TraceFunc = void function(const(char)*);
alias JPH_AssertFailureFunc = bool function(const(char)*, const(char)*, const(char)*, uint);
alias JPH_JobFunction = void function(void*);
alias JPH_QueueJobCallback = void function(void*, void function(void*), void*);
alias JPH_QueueJobsCallback = void function(void*, void function(void*), void**, uint);
alias JPH_JobSystemThreadPool_Create  = JPH_JobSystem* function(const(JobSystemThreadPoolConfig)*) @nogc nothrow;
alias JPH_JobSystemCallback_Create  = JPH_JobSystem* function(const(JPH_JobSystemConfig)*) @nogc nothrow;
alias JPH_JobSystem_Destroy = void function(JPH_JobSystem*);
alias JPH_Init = bool function();
alias JPH_Shutdown = void function();
alias JPH_SetTraceHandler = void function(JPH_TraceFunc);
alias JPH_SetAssertFailureHandler = void function(JPH_AssertFailureFunc);
alias JPH_BroadPhaseLayerInterfaceMask_Create  = JPH_BroadPhaseLayerInterface* function(uint32_t) @nogc nothrow;
alias JPH_BroadPhaseLayerInterfaceMask_ConfigureLayer  = void function(
    JPH_BroadPhaseLayerInterface*, JPH_BroadPhaseLayer, uint32_t, uint32_t) @nogc nothrow;
alias JPH_BroadPhaseLayerInterfaceTable_Create  = JPH_BroadPhaseLayerInterface* function(uint32_t, uint32_t) @nogc nothrow;
alias JPH_BroadPhaseLayerInterfaceTable_MapObjectToBroadPhaseLayer  = void function(
    JPH_BroadPhaseLayerInterface*, JPH_ObjectLayer, JPH_BroadPhaseLayer) @nogc nothrow;
alias JPH_ObjectLayerPairFilterMask_Create  = JPH_ObjectLayerPairFilter* function() @nogc nothrow;
alias JPH_ObjectLayerPairFilterMask_GetObjectLayer = JPH_ObjectLayer function(uint32_t, uint32_t);
alias JPH_ObjectLayerPairFilterMask_GetGroup = uint32_t function(JPH_ObjectLayer);
alias JPH_ObjectLayerPairFilterMask_GetMask = uint32_t function(JPH_ObjectLayer);
alias JPH_ObjectLayerPairFilterTable_Create  = JPH_ObjectLayerPairFilter* function(uint32_t) @nogc nothrow;
alias JPH_ObjectLayerPairFilterTable_DisableCollision = void function(
    JPH_ObjectLayerPairFilter*, JPH_ObjectLayer, JPH_ObjectLayer);
alias JPH_ObjectLayerPairFilterTable_EnableCollision = void function(
    JPH_ObjectLayerPairFilter*, JPH_ObjectLayer, JPH_ObjectLayer);
alias JPH_ObjectLayerPairFilterTable_ShouldCollide = bool function(
    JPH_ObjectLayerPairFilter*, JPH_ObjectLayer, JPH_ObjectLayer);
alias JPH_ObjectVsBroadPhaseLayerFilterMask_Create  = JPH_ObjectVsBroadPhaseLayerFilter* function(
    const(JPH_BroadPhaseLayerInterface)*) @nogc nothrow;
alias JPH_ObjectVsBroadPhaseLayerFilterTable_Create  = JPH_ObjectVsBroadPhaseLayerFilter* function(
    JPH_BroadPhaseLayerInterface*, uint32_t, JPH_ObjectLayerPairFilter*, uint32_t) @nogc nothrow;
alias JPH_DrawSettings_InitDefault = void function(JPH_DrawSettings*);
alias JPH_PhysicsSystem_Create  = JPH_PhysicsSystem* function(JPH_PhysicsSystemSettings*);
alias JPH_PhysicsSystem_Destroy = void function(JPH_PhysicsSystem*);
alias JPH_PhysicsSystem_SetPhysicsSettings = void function(JPH_PhysicsSystem*, JPH_PhysicsSettings*);
alias JPH_PhysicsSystem_GetPhysicsSettings = void function(JPH_PhysicsSystem*, JPH_PhysicsSettings*);
alias JPH_PhysicsSystem_OptimizeBroadPhase = void function(JPH_PhysicsSystem*);
alias JPH_PhysicsSystem_Update = JPH_PhysicsUpdateError function(
    JPH_PhysicsSystem*, float, int, JPH_JobSystem*);
alias JPH_PhysicsSystem_GetBodyInterface  = JPH_BodyInterface* function(JPH_PhysicsSystem*) @nogc nothrow;
alias JPH_PhysicsSystem_GetBodyInterfaceNoLock  = JPH_BodyInterface* function(JPH_PhysicsSystem*) @nogc nothrow;
alias JPH_PhysicsSystem_GetBodyLockInterface = const(JPH_BodyLockInterface)* function(const(JPH_PhysicsSystem)*) @nogc nothrow;
alias JPH_PhysicsSystem_GetBodyLockInterfaceNoLock = const(JPH_BodyLockInterface)* function(
    const(JPH_PhysicsSystem)*) @nogc nothrow;
alias JPH_PhysicsSystem_GetBroadPhaseQuery = const(JPH_BroadPhaseQuery)* function(const(JPH_PhysicsSystem)*) @nogc nothrow;
alias JPH_PhysicsSystem_GetNarrowPhaseQuery = const(JPH_NarrowPhaseQuery)* function(const(JPH_PhysicsSystem)*) @nogc nothrow;
alias JPH_PhysicsSystem_GetNarrowPhaseQueryNoLock = const(JPH_NarrowPhaseQuery)* function(const(JPH_PhysicsSystem)*) @nogc nothrow;
alias JPH_PhysicsSystem_SetContactListener = void function(JPH_PhysicsSystem*, JPH_ContactListener*);
alias JPH_PhysicsSystem_SetBodyActivationListener = void function(
    JPH_PhysicsSystem*, JPH_BodyActivationListener*);
alias JPH_PhysicsSystem_WereBodiesInContact = bool function(
    const(JPH_PhysicsSystem)*, JPH_BodyID, JPH_BodyID);
alias JPH_PhysicsSystem_GetNumBodies = uint32_t function(const(JPH_PhysicsSystem)*);
alias JPH_PhysicsSystem_GetNumActiveBodies = uint32_t function(
    const(JPH_PhysicsSystem)*, JPH_BodyType);
alias JPH_PhysicsSystem_GetMaxBodies = uint32_t function(const(JPH_PhysicsSystem)*);
alias JPH_PhysicsSystem_GetNumConstraints = uint32_t function(const(JPH_PhysicsSystem)*);
alias JPH_PhysicsSystem_SetGravity = void function(JPH_PhysicsSystem*, const(JPH_Vec3)*);
alias JPH_PhysicsSystem_GetGravity = void function(JPH_PhysicsSystem*, JPH_Vec3*);
alias JPH_PhysicsSystem_AddConstraint = void function(JPH_PhysicsSystem*, JPH_Constraint*);
alias JPH_PhysicsSystem_RemoveConstraint = void function(JPH_PhysicsSystem*, JPH_Constraint*);
alias JPH_PhysicsSystem_AddConstraints = void function(JPH_PhysicsSystem*, JPH_Constraint**, uint32_t);
alias JPH_PhysicsSystem_RemoveConstraints = void function(JPH_PhysicsSystem*, JPH_Constraint**, uint32_t);
alias JPH_PhysicsSystem_GetBodies = void function(const(JPH_PhysicsSystem)*, JPH_BodyID*, uint32_t);
alias JPH_PhysicsSystem_GetConstraints = void function(const(JPH_PhysicsSystem)*, const(
        JPH_Constraint)**, uint32_t);
alias JPH_PhysicsSystem_DrawBodies  = void function(JPH_PhysicsSystem*, const(JPH_DrawSettings)*, JPH_DebugRenderer*, const(
        JPH_BodyDrawFilter)*) @nogc nothrow;
alias JPH_PhysicsSystem_DrawConstraints = void function(JPH_PhysicsSystem*, JPH_DebugRenderer*);
alias JPH_PhysicsSystem_DrawConstraintLimits = void function(JPH_PhysicsSystem*, JPH_DebugRenderer*);
alias JPH_PhysicsSystem_DrawConstraintReferenceFrame = void function(
    JPH_PhysicsSystem*, JPH_DebugRenderer*);
alias JPH_Quaternion_FromTo = void function(const(JPH_Vec3)*, const(JPH_Vec3)*, JPH_Quat*);
alias JPH_PhysicsMaterial_Create  = JPH_PhysicsMaterial* function(const(char)*, uint32_t) @nogc nothrow;
alias JPH_PhysicsMaterial_Destroy = void function(JPH_PhysicsMaterial*);
alias JPH_PhysicsMaterial_GetDebugName = const(char)* function(const(JPH_PhysicsMaterial)*) @nogc nothrow;
alias JPH_PhysicsMaterial_GetDebugColor = uint32_t function(const(JPH_PhysicsMaterial)*);
alias JPH_ShapeSettings_Destroy = void function(JPH_ShapeSettings*);
alias JPH_ShapeSettings_GetUserData = uint64_t function(const(JPH_ShapeSettings)*);
alias JPH_ShapeSettings_SetUserData = void function(JPH_ShapeSettings*, uint64_t);
alias JPH_Shape_Destroy = void function(JPH_Shape*);
alias JPH_Shape_GetType = JPH_ShapeType function(const(JPH_Shape)*);
alias JPH_Shape_GetSubType = JPH_ShapeSubType function(const(JPH_Shape)*);
alias JPH_Shape_GetUserData = uint64_t function(const(JPH_Shape)*);
alias JPH_Shape_SetUserData = void function(JPH_Shape*, uint64_t);
alias JPH_Shape_MustBeStatic = bool function(const(JPH_Shape)*);
alias JPH_Shape_GetCenterOfMass = void function(const(JPH_Shape)*, JPH_Vec3*);
alias JPH_Shape_GetLocalBounds = void function(const(JPH_Shape)*, JPH_AABox*);
alias JPH_Shape_GetSubShapeIDBitsRecursive = uint32_t function(const(JPH_Shape)*);
alias JPH_Shape_GetWorldSpaceBounds = void function(const(JPH_Shape)*, JPH_RMatrix4x4*, JPH_Vec3*, JPH_AABox*);
alias JPH_Shape_GetInnerRadius = float function(const(JPH_Shape)*);
alias JPH_Shape_GetMassProperties = void function(const(JPH_Shape)*, JPH_MassProperties*);
alias JPH_Shape_GetLeafShape = const(JPH_Shape)* function(const(JPH_Shape)*, JPH_SubShapeID, JPH_SubShapeID*) @nogc nothrow;
alias JPH_Shape_GetMaterial = const(JPH_PhysicsMaterial)* function(const(JPH_Shape)*, JPH_SubShapeID) @nogc nothrow;
alias JPH_Shape_GetSurfaceNormal = void function(const(JPH_Shape)*, JPH_SubShapeID, JPH_Vec3*, JPH_Vec3*);
alias JPH_Shape_GetVolume = float function(const(JPH_Shape)*);
alias JPH_Shape_IsValidScale = bool function(const(JPH_Shape)*, const(JPH_Vec3)*);
alias JPH_Shape_MakeScaleValid = void function(const(JPH_Shape)*, const(JPH_Vec3)*, JPH_Vec3*);
alias JPH_Shape_ScaleShape  = JPH_Shape* function(const(JPH_Shape)*, const(JPH_Vec3)*) @nogc nothrow;
alias JPH_Shape_CastRay = bool function(const(JPH_Shape)*, const(JPH_Vec3)*, const(JPH_Vec3)*, JPH_RayCastResult*);
alias JPH_Shape_CastRay2  = bool function(const(JPH_Shape)*, const(JPH_Vec3)*, const(JPH_Vec3)*, const(
        JPH_RayCastSettings)*, JPH_CollisionCollectorType, JPH_CastRayResultCallback, void*, const(
        JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_Shape_CollidePoint = bool function(const(JPH_Shape)*, const(JPH_Vec3)*, const(
        JPH_ShapeFilter)*);
alias JPH_Shape_CollidePoint2  = bool function(const(JPH_Shape)*, const(JPH_Vec3)*, JPH_CollisionCollectorType, JPH_CollidePointResultCallback, void*, const(
        JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_ConvexShapeSettings_GetDensity = float function(const(JPH_ConvexShapeSettings)*);
alias JPH_ConvexShapeSettings_SetDensity = void function(JPH_ConvexShapeSettings*, float);
alias JPH_ConvexShape_GetDensity = float function(const(JPH_ConvexShape)*);
alias JPH_ConvexShape_SetDensity = void function(JPH_ConvexShape*, float);
alias JPH_BoxShapeSettings_Create  = JPH_BoxShapeSettings* function(const(JPH_Vec3)*, float) @nogc nothrow;
alias JPH_BoxShapeSettings_CreateShape  = JPH_BoxShape* function(const(JPH_BoxShapeSettings)*) @nogc nothrow;
alias JPH_BoxShape_Create  = JPH_BoxShape* function(const(JPH_Vec3)*, float) @nogc nothrow;
alias JPH_BoxShape_GetHalfExtent = void function(const(JPH_BoxShape)*, JPH_Vec3*);
alias JPH_BoxShape_GetConvexRadius = float function(const(JPH_BoxShape)*);
alias JPH_SphereShapeSettings_Create  = JPH_SphereShapeSettings* function(float) @nogc nothrow;
alias JPH_SphereShapeSettings_CreateShape  = JPH_SphereShape* function(const(JPH_SphereShapeSettings)*) @nogc nothrow;
alias JPH_SphereShapeSettings_GetRadius = float function(const(JPH_SphereShapeSettings)*);
alias JPH_SphereShapeSettings_SetRadius = void function(JPH_SphereShapeSettings*, float);
alias JPH_SphereShape_Create  = JPH_SphereShape* function(float) @nogc nothrow;
alias JPH_SphereShape_GetRadius = float function(const(JPH_SphereShape)*);
alias JPH_PlaneShapeSettings_Create  = JPH_PlaneShapeSettings* function(const(JPH_Plane)*, const(JPH_PhysicsMaterial)*, float) @nogc nothrow;
alias JPH_PlaneShapeSettings_CreateShape  = JPH_PlaneShape* function(const(JPH_PlaneShapeSettings)*) @nogc nothrow;
alias JPH_PlaneShape_Create  = JPH_PlaneShape* function(const(JPH_Plane)*, const(JPH_PhysicsMaterial)*, float) @nogc nothrow;
alias JPH_PlaneShape_GetPlane = void function(const(JPH_PlaneShape)*, JPH_Plane*);
alias JPH_PlaneShape_GetHalfExtent = float function(const(JPH_PlaneShape)*);
alias JPH_TriangleShapeSettings_Create  = JPH_TriangleShapeSettings* function(const(JPH_Vec3)*, const(JPH_Vec3)*, const(
        JPH_Vec3)*, float) @nogc nothrow;
alias JPH_TriangleShapeSettings_CreateShape  = JPH_TriangleShape* function(const(JPH_TriangleShapeSettings)*) @nogc nothrow;
alias JPH_TriangleShape_Create  = JPH_TriangleShape* function(const(JPH_Vec3)*, const(JPH_Vec3)*, const(JPH_Vec3)*, float) @nogc nothrow;
alias JPH_TriangleShape_GetConvexRadius = float function(const(JPH_TriangleShape)*);
alias JPH_TriangleShape_GetVertex1 = void function(const(JPH_TriangleShape)*, JPH_Vec3*);
alias JPH_TriangleShape_GetVertex2 = void function(const(JPH_TriangleShape)*, JPH_Vec3*);
alias JPH_TriangleShape_GetVertex3 = void function(const(JPH_TriangleShape)*, JPH_Vec3*);
alias JPH_CapsuleShapeSettings_Create  = JPH_CapsuleShapeSettings* function(float, float) @nogc nothrow;
alias JPH_CapsuleShapeSettings_CreateShape  = JPH_CapsuleShape* function(const(JPH_CapsuleShapeSettings)*) @nogc nothrow;
alias JPH_CapsuleShape_Create  = JPH_CapsuleShape* function(float, float) @nogc nothrow;
alias JPH_CapsuleShape_GetRadius = float function(const(JPH_CapsuleShape)*);
alias JPH_CapsuleShape_GetHalfHeightOfCylinder = float function(const(JPH_CapsuleShape)*);
alias JPH_CylinderShapeSettings_Create  = JPH_CylinderShapeSettings* function(float, float, float) @nogc nothrow;
alias JPH_CylinderShapeSettings_CreateShape  = JPH_CylinderShape* function(const(JPH_CylinderShapeSettings)*) @nogc nothrow;
alias JPH_CylinderShape_Create  = JPH_CylinderShape* function(float, float) @nogc nothrow;
alias JPH_CylinderShape_GetRadius = float function(const(JPH_CylinderShape)*);
alias JPH_CylinderShape_GetHalfHeight = float function(const(JPH_CylinderShape)*);
alias JPH_TaperedCylinderShapeSettings_Create  = JPH_TaperedCylinderShapeSettings* function(float, float, float, float, const(
        JPH_PhysicsMaterial)*) @nogc nothrow;
alias JPH_TaperedCylinderShapeSettings_CreateShape  = JPH_TaperedCylinderShape* function(
    const(JPH_TaperedCylinderShapeSettings)*) @nogc nothrow;
alias JPH_TaperedCylinderShape_GetTopRadius = float function(const(JPH_TaperedCylinderShape)*);
alias JPH_TaperedCylinderShape_GetBottomRadius = float function(const(JPH_TaperedCylinderShape)*);
alias JPH_TaperedCylinderShape_GetConvexRadius = float function(const(JPH_TaperedCylinderShape)*);
alias JPH_TaperedCylinderShape_GetHalfHeight = float function(const(JPH_TaperedCylinderShape)*);
alias JPH_ConvexHullShapeSettings_Create  = JPH_ConvexHullShapeSettings* function(const(JPH_Vec3)*, uint32_t, float) @nogc nothrow;
alias JPH_ConvexHullShapeSettings_CreateShape  = JPH_ConvexHullShape* function(const(JPH_ConvexHullShapeSettings)*) @nogc nothrow;
alias JPH_ConvexHullShape_GetNumPoints = uint32_t function(const(JPH_ConvexHullShape)*);
alias JPH_ConvexHullShape_GetPoint = void function(const(JPH_ConvexHullShape)*, uint32_t, JPH_Vec3*);
alias JPH_ConvexHullShape_GetNumFaces = uint32_t function(const(JPH_ConvexHullShape)*);
alias JPH_ConvexHullShape_GetNumVerticesInFace = uint32_t function(
    const(JPH_ConvexHullShape)*, uint32_t);
alias JPH_ConvexHullShape_GetFaceVertices = uint32_t function(
    const(JPH_ConvexHullShape)*, uint32_t, uint32_t, uint32_t*);
alias JPH_MeshShapeSettings_Create  = JPH_MeshShapeSettings* function(const(JPH_Triangle)*, uint32_t) @nogc nothrow;
alias JPH_MeshShapeSettings_Create2  = JPH_MeshShapeSettings* function(const(JPH_Vec3)*, uint32_t, const(
        JPH_IndexedTriangle)*, uint32_t) @nogc nothrow;
alias JPH_MeshShapeSettings_GetPerTriangleUserData = bool function(const(JPH_MeshShapeSettings)*);
alias JPH_MeshShapeSettings_SetPerTriangleUserData = void function(JPH_MeshShapeSettings*, bool);
alias JPH_MeshShapeSettings_Sanitize = void function(JPH_MeshShapeSettings*);
alias JPH_MeshShapeSettings_CreateShape  = JPH_MeshShape* function(const(JPH_MeshShapeSettings)*) @nogc nothrow;
alias JPH_MeshShape_GetTriangleUserData = uint32_t function(const(JPH_MeshShape)*, JPH_SubShapeID);
alias JPH_HeightFieldShapeSettings_Create  = JPH_HeightFieldShapeSettings* function(const(float)*, const(JPH_Vec3)*, const(
        JPH_Vec3)*, uint32_t) @nogc nothrow;
alias JPH_HeightFieldShapeSettings_CreateShape  = JPH_HeightFieldShape* function(JPH_HeightFieldShapeSettings*) @nogc nothrow;
alias JPH_HeightFieldShapeSettings_DetermineMinAndMaxSample  = void function(
    const(JPH_HeightFieldShapeSettings)*, float*, float*, float*) @nogc nothrow;
alias JPH_HeightFieldShapeSettings_CalculateBitsPerSampleForError  = uint32_t function(
    const(JPH_HeightFieldShapeSettings)*, float) @nogc nothrow;
alias JPH_HeightFieldShape_GetSampleCount = uint32_t function(const(JPH_HeightFieldShape)*);
alias JPH_HeightFieldShape_GetBlockSize = uint32_t function(const(JPH_HeightFieldShape)*);
alias JPH_HeightFieldShape_GetMaterial = const(JPH_PhysicsMaterial)* function(
    const(JPH_HeightFieldShape)*, uint32_t, uint32_t) @nogc nothrow;
alias JPH_HeightFieldShape_GetPosition = void function(
    const(JPH_HeightFieldShape)*, uint32_t, uint32_t, JPH_Vec3*);
alias JPH_HeightFieldShape_IsNoCollision = bool function(
    const(JPH_HeightFieldShape)*, uint32_t, uint32_t);
alias JPH_HeightFieldShape_ProjectOntoSurface = bool function(
    const(JPH_HeightFieldShape)*, const(JPH_Vec3)*, JPH_Vec3*, JPH_SubShapeID*);
alias JPH_HeightFieldShape_GetMinHeightValue = float function(const(JPH_HeightFieldShape)*);
alias JPH_HeightFieldShape_GetMaxHeightValue = float function(const(JPH_HeightFieldShape)*);
alias JPH_TaperedCapsuleShapeSettings_Create  = JPH_TaperedCapsuleShapeSettings* function(float, float, float) @nogc nothrow;
alias JPH_TaperedCapsuleShapeSettings_CreateShape  = JPH_TaperedCapsuleShape* function(
    JPH_TaperedCapsuleShapeSettings*) @nogc nothrow;
alias JPH_TaperedCapsuleShape_GetTopRadius = float function(const(JPH_TaperedCapsuleShape)*);
alias JPH_TaperedCapsuleShape_GetBottomRadius = float function(const(JPH_TaperedCapsuleShape)*);
alias JPH_TaperedCapsuleShape_GetHalfHeight = float function(const(JPH_TaperedCapsuleShape)*);
alias JPH_CompoundShapeSettings_AddShape  = void function(JPH_CompoundShapeSettings*, const(JPH_Vec3)*, const(
        JPH_Quat)*, const(JPH_ShapeSettings)*, uint32_t) @nogc nothrow;
alias JPH_CompoundShapeSettings_AddShape2  = void function(JPH_CompoundShapeSettings*, const(JPH_Vec3)*, const(
        JPH_Quat)*, const(JPH_Shape)*, uint32_t) @nogc nothrow;
alias JPH_CompoundShape_GetNumSubShapes = uint32_t function(const(JPH_CompoundShape)*);
alias JPH_CompoundShape_GetSubShape = void function(const(JPH_CompoundShape)*, uint32_t, const(
        JPH_Shape)**, JPH_Vec3*, JPH_Quat*, uint32_t*);
alias JPH_CompoundShape_GetSubShapeIndexFromID = uint32_t function(
    const(JPH_CompoundShape)*, JPH_SubShapeID, JPH_SubShapeID*);
alias JPH_StaticCompoundShapeSettings_Create  = JPH_StaticCompoundShapeSettings* function() @nogc nothrow;
alias JPH_StaticCompoundShape_Create  = JPH_StaticCompoundShape* function(const(JPH_StaticCompoundShapeSettings)*) @nogc nothrow;
alias JPH_MutableCompoundShapeSettings_Create  = JPH_MutableCompoundShapeSettings* function() @nogc nothrow;
alias JPH_MutableCompoundShape_Create  = JPH_MutableCompoundShape* function(const(JPH_MutableCompoundShapeSettings)*) @nogc nothrow;
alias JPH_MutableCompoundShape_AddShape  = uint32_t function(JPH_MutableCompoundShape*, const(JPH_Vec3)*, const(
        JPH_Quat)*, const(JPH_Shape)*, uint32_t, uint32_t) @nogc nothrow;
alias JPH_MutableCompoundShape_RemoveShape = void function(JPH_MutableCompoundShape*, uint32_t);
alias JPH_MutableCompoundShape_ModifyShape  = void function(JPH_MutableCompoundShape*, uint32_t, const(JPH_Vec3)*, const(
        JPH_Quat)*) @nogc nothrow;
alias JPH_MutableCompoundShape_ModifyShape2  = void function(JPH_MutableCompoundShape*, uint32_t, const(JPH_Vec3)*, const(
        JPH_Quat)*, const(JPH_Shape)*) @nogc nothrow;
alias JPH_MutableCompoundShape_AdjustCenterOfMass = void function(JPH_MutableCompoundShape*);
alias JPH_DecoratedShape_GetInnerShape = const(JPH_Shape)* function(const(JPH_DecoratedShape)*) @nogc nothrow;
alias JPH_RotatedTranslatedShapeSettings_Create  = JPH_RotatedTranslatedShapeSettings* function(
    const(JPH_Vec3)*, const(JPH_Quat)*, const(JPH_ShapeSettings)*) @nogc nothrow;
alias JPH_RotatedTranslatedShapeSettings_Create2  = JPH_RotatedTranslatedShapeSettings* function(
    const(JPH_Vec3)*, const(JPH_Quat)*, const(JPH_Shape)*) @nogc nothrow;
alias JPH_RotatedTranslatedShapeSettings_CreateShape  = JPH_RotatedTranslatedShape* function(
    const(JPH_RotatedTranslatedShapeSettings)*) @nogc nothrow;
alias JPH_RotatedTranslatedShape_Create  = JPH_RotatedTranslatedShape* function(const(JPH_Vec3)*, const(JPH_Quat)*, const(
        JPH_Shape)*) @nogc nothrow;
alias JPH_RotatedTranslatedShape_GetPosition = void function(
    const(JPH_RotatedTranslatedShape)*, JPH_Vec3*);
alias JPH_RotatedTranslatedShape_GetRotation = void function(
    const(JPH_RotatedTranslatedShape)*, JPH_Quat*);
alias JPH_ScaledShapeSettings_Create  = JPH_ScaledShapeSettings* function(const(JPH_ShapeSettings)*, const(JPH_Vec3)*) @nogc nothrow;
alias JPH_ScaledShapeSettings_Create2  = JPH_ScaledShapeSettings* function(const(JPH_Shape)*, const(JPH_Vec3)*) @nogc nothrow;
alias JPH_ScaledShapeSettings_CreateShape  = JPH_ScaledShape* function(const(JPH_ScaledShapeSettings)*) @nogc nothrow;
alias JPH_ScaledShape_Create  = JPH_ScaledShape* function(const(JPH_Shape)*, const(JPH_Vec3)*) @nogc nothrow;
alias JPH_ScaledShape_GetScale = void function(const(JPH_ScaledShape)*, JPH_Vec3*);
alias JPH_OffsetCenterOfMassShapeSettings_Create  = JPH_OffsetCenterOfMassShapeSettings* function(
    const(JPH_Vec3)*, const(JPH_ShapeSettings)*) @nogc nothrow;
alias JPH_OffsetCenterOfMassShapeSettings_Create2  = JPH_OffsetCenterOfMassShapeSettings* function(
    const(JPH_Vec3)*, const(JPH_Shape)*) @nogc nothrow;
alias JPH_OffsetCenterOfMassShapeSettings_CreateShape  = JPH_OffsetCenterOfMassShape* function(
    const(JPH_OffsetCenterOfMassShapeSettings)*) @nogc nothrow;
alias JPH_OffsetCenterOfMassShape_Create  = JPH_OffsetCenterOfMassShape* function(const(JPH_Vec3)*, const(JPH_Shape)*) @nogc nothrow;
alias JPH_OffsetCenterOfMassShape_GetOffset = void function(
    const(JPH_OffsetCenterOfMassShape)*, JPH_Vec3*);
alias JPH_EmptyShapeSettings_Create  = JPH_EmptyShapeSettings* function(const(JPH_Vec3)*) @nogc nothrow;
alias JPH_EmptyShapeSettings_CreateShape  = JPH_EmptyShape* function(const(JPH_EmptyShapeSettings)*) @nogc nothrow;
alias JPH_BodyCreationSettings_Create  = JPH_BodyCreationSettings* function() @nogc nothrow;
alias JPH_BodyCreationSettings_Create2  = JPH_BodyCreationSettings* function(JPH_ShapeSettings*, const(JPH_RVec3)*, const(
        JPH_Quat)*, JPH_MotionType, JPH_ObjectLayer) @nogc nothrow;
alias JPH_BodyCreationSettings_Create3  = JPH_BodyCreationSettings* function(const(JPH_Shape)*, const(JPH_RVec3)*, const(
        JPH_Quat)*, JPH_MotionType, JPH_ObjectLayer) @nogc nothrow;
alias JPH_BodyCreationSettings_Destroy = void function(JPH_BodyCreationSettings*);
alias JPH_BodyCreationSettings_GetPosition = void function(JPH_BodyCreationSettings*, JPH_RVec3*);
alias JPH_BodyCreationSettings_SetPosition = void function(
    JPH_BodyCreationSettings*, const(JPH_RVec3)*);
alias JPH_BodyCreationSettings_GetRotation = void function(JPH_BodyCreationSettings*, JPH_Quat*);
alias JPH_BodyCreationSettings_SetRotation = void function(
    JPH_BodyCreationSettings*, const(JPH_Quat)*);
alias JPH_BodyCreationSettings_GetLinearVelocity = void function(
    JPH_BodyCreationSettings*, JPH_Vec3*);
alias JPH_BodyCreationSettings_SetLinearVelocity = void function(
    JPH_BodyCreationSettings*, const(JPH_Vec3)*);
alias JPH_BodyCreationSettings_GetAngularVelocity = void function(
    JPH_BodyCreationSettings*, JPH_Vec3*);
alias JPH_BodyCreationSettings_SetAngularVelocity = void function(
    JPH_BodyCreationSettings*, const(JPH_Vec3)*);
alias JPH_BodyCreationSettings_GetUserData = uint64_t function(const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetUserData = void function(JPH_BodyCreationSettings*, uint64_t);
alias JPH_BodyCreationSettings_GetObjectLayer = JPH_ObjectLayer function(
    const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetObjectLayer = void function(
    JPH_BodyCreationSettings*, JPH_ObjectLayer);
alias JPH_BodyCreationSettings_GetMotionType = JPH_MotionType function(
    const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetMotionType = void function(
    JPH_BodyCreationSettings*, JPH_MotionType);
alias JPH_BodyCreationSettings_GetAllowedDOFs = JPH_AllowedDOFs function(
    const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetAllowedDOFs = void function(
    JPH_BodyCreationSettings*, JPH_AllowedDOFs);
alias JPH_BodyCreationSettings_GetAllowDynamicOrKinematic = bool function(
    const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetAllowDynamicOrKinematic = void function(
    JPH_BodyCreationSettings*, bool);
alias JPH_BodyCreationSettings_GetIsSensor = bool function(const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetIsSensor = void function(JPH_BodyCreationSettings*, bool);
alias JPH_BodyCreationSettings_GetCollideKinematicVsNonDynamic = bool function(
    const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetCollideKinematicVsNonDynamic = void function(
    JPH_BodyCreationSettings*, bool);
alias JPH_BodyCreationSettings_GetUseManifoldReduction = bool function(
    const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetUseManifoldReduction = void function(
    JPH_BodyCreationSettings*, bool);
alias JPH_BodyCreationSettings_GetApplyGyroscopicForce = bool function(
    const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetApplyGyroscopicForce = void function(
    JPH_BodyCreationSettings*, bool);
alias JPH_BodyCreationSettings_GetMotionQuality = JPH_MotionQuality function(
    const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetMotionQuality = void function(
    JPH_BodyCreationSettings*, JPH_MotionQuality);
alias JPH_BodyCreationSettings_GetEnhancedInternalEdgeRemoval = bool function(
    const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetEnhancedInternalEdgeRemoval = void function(
    JPH_BodyCreationSettings*, bool);
alias JPH_BodyCreationSettings_GetAllowSleeping = bool function(const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetAllowSleeping = void function(JPH_BodyCreationSettings*, bool);
alias JPH_BodyCreationSettings_GetFriction = float function(const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetFriction = void function(JPH_BodyCreationSettings*, float);
alias JPH_BodyCreationSettings_GetRestitution = float function(const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetRestitution = void function(JPH_BodyCreationSettings*, float);
alias JPH_BodyCreationSettings_GetLinearDamping = float function(const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetLinearDamping = void function(JPH_BodyCreationSettings*, float);
alias JPH_BodyCreationSettings_GetAngularDamping = float function(const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetAngularDamping = void function(JPH_BodyCreationSettings*, float);
alias JPH_BodyCreationSettings_GetMaxLinearVelocity = float function(
    const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetMaxLinearVelocity = void function(
    JPH_BodyCreationSettings*, float);
alias JPH_BodyCreationSettings_GetMaxAngularVelocity = float function(
    const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetMaxAngularVelocity = void function(
    JPH_BodyCreationSettings*, float);
alias JPH_BodyCreationSettings_GetGravityFactor = float function(const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetGravityFactor = void function(JPH_BodyCreationSettings*, float);
alias JPH_BodyCreationSettings_GetNumVelocityStepsOverride = uint32_t function(
    const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetNumVelocityStepsOverride = void function(
    JPH_BodyCreationSettings*, uint32_t);
alias JPH_BodyCreationSettings_GetNumPositionStepsOverride = uint32_t function(
    const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetNumPositionStepsOverride = void function(
    JPH_BodyCreationSettings*, uint32_t);
alias JPH_BodyCreationSettings_GetOverrideMassProperties  = JPH_OverrideMassProperties function(
    const(JPH_BodyCreationSettings)*) @nogc nothrow;
alias JPH_BodyCreationSettings_SetOverrideMassProperties = void function(
    JPH_BodyCreationSettings*, JPH_OverrideMassProperties);
alias JPH_BodyCreationSettings_GetInertiaMultiplier = float function(
    const(JPH_BodyCreationSettings)*);
alias JPH_BodyCreationSettings_SetInertiaMultiplier = void function(
    JPH_BodyCreationSettings*, float);
alias JPH_BodyCreationSettings_GetMassPropertiesOverride  = void function(
    const(JPH_BodyCreationSettings)*, JPH_MassProperties*) @nogc nothrow;
alias JPH_BodyCreationSettings_SetMassPropertiesOverride  = void function(JPH_BodyCreationSettings*, const(
        JPH_MassProperties)*) @nogc nothrow;
alias JPH_SoftBodyCreationSettings_Create  = JPH_SoftBodyCreationSettings* function() @nogc nothrow;
alias JPH_SoftBodyCreationSettings_Destroy = void function(JPH_SoftBodyCreationSettings*);
alias JPH_ConstraintSettings_Destroy = void function(JPH_ConstraintSettings*);
alias JPH_ConstraintSettings_GetEnabled = bool function(JPH_ConstraintSettings*);
alias JPH_FixedConstraintSettings_SetEnabled = void function(JPH_ConstraintSettings*, bool);
alias JPH_ConstraintSettings_GetConstraintPriority = uint32_t function(JPH_ConstraintSettings*);
alias JPH_FixedConstraintSettings_SetConstraintPriority = void function(
    JPH_ConstraintSettings*, uint32_t);
alias JPH_ConstraintSettings_GetNumVelocityStepsOverride = uint32_t function(
    JPH_ConstraintSettings*);
alias JPH_ConstraintSettings_SetNumVelocityStepsOverride = void function(
    JPH_ConstraintSettings*, uint32_t);
alias JPH_ConstraintSettings_GetNumPositionStepsOverride = uint32_t function(
    JPH_ConstraintSettings*);
alias JPH_ConstraintSettings_SetNumPositionStepsOverride = void function(
    JPH_ConstraintSettings*, uint32_t);
alias JPH_ConstraintSettings_GetDrawConstraintSize = float function(JPH_ConstraintSettings*);
alias JPH_ConstraintSettings_SetDrawConstraintSize = void function(JPH_ConstraintSettings*, float);
alias JPH_ConstraintSettings_GetUserData = uint64_t function(JPH_ConstraintSettings*);
alias JPH_ConstraintSettings_SetUserData = void function(JPH_ConstraintSettings*, uint64_t);
alias JPH_Constraint_GetConstraintSettings  = JPH_ConstraintSettings* function(JPH_Constraint*) @nogc nothrow;
alias JPH_Constraint_GetType = JPH_ConstraintType function(const(JPH_Constraint)*);
alias JPH_Constraint_GetSubType = JPH_ConstraintSubType function(const(JPH_Constraint)*);
alias JPH_Constraint_GetConstraintPriority = uint32_t function(const(JPH_Constraint)*);
alias JPH_Constraint_SetConstraintPriority = void function(JPH_Constraint*, uint32_t);
alias JPH_Constraint_GetEnabled = bool function(JPH_Constraint*);
alias JPH_Constraint_SetEnabled = void function(JPH_Constraint*, bool);
alias JPH_Constraint_GetUserData = uint64_t function(const(JPH_Constraint)*);
alias JPH_Constraint_SetUserData = void function(JPH_Constraint*, uint64_t);
alias JPH_Constraint_NotifyShapeChanged = void function(JPH_Constraint*, JPH_BodyID, JPH_Vec3*);
alias JPH_Constraint_Destroy = void function(JPH_Constraint*);
alias JPH_FixedConstraintSettings_Create  = JPH_FixedConstraintSettings* function() @nogc nothrow;
alias JPH_FixedConstraintSettings_GetSpace = JPH_ConstraintSpace function(
    JPH_FixedConstraintSettings*);
alias JPH_FixedConstraintSettings_SetSpace = void function(
    JPH_FixedConstraintSettings*, JPH_ConstraintSpace);
alias JPH_FixedConstraintSettings_GetAutoDetectPoint = bool function(JPH_FixedConstraintSettings*);
alias JPH_FixedConstraintSettings_SetAutoDetectPoint = void function(
    JPH_FixedConstraintSettings*, bool);
alias JPH_FixedConstraintSettings_GetPoint1 = void function(
    JPH_FixedConstraintSettings*, JPH_RVec3*);
alias JPH_FixedConstraintSettings_SetPoint1 = void function(
    JPH_FixedConstraintSettings*, const(JPH_RVec3)*);
alias JPH_FixedConstraintSettings_GetAxisX1 = void function(
    JPH_FixedConstraintSettings*, JPH_Vec3*);
alias JPH_FixedConstraintSettings_SetAxisX1 = void function(
    JPH_FixedConstraintSettings*, const(JPH_Vec3)*);
alias JPH_FixedConstraintSettings_GetAxisY1 = void function(
    JPH_FixedConstraintSettings*, JPH_Vec3*);
alias JPH_FixedConstraintSettings_SetAxisY1 = void function(
    JPH_FixedConstraintSettings*, const(JPH_Vec3)*);
alias JPH_FixedConstraintSettings_GetPoint2 = void function(
    JPH_FixedConstraintSettings*, JPH_RVec3*);
alias JPH_FixedConstraintSettings_SetPoint2 = void function(
    JPH_FixedConstraintSettings*, const(JPH_RVec3)*);
alias JPH_FixedConstraintSettings_GetAxisX2 = void function(
    JPH_FixedConstraintSettings*, JPH_Vec3*);
alias JPH_FixedConstraintSettings_SetAxisX2 = void function(
    JPH_FixedConstraintSettings*, const(JPH_Vec3)*);
alias JPH_FixedConstraintSettings_GetAxisY2 = void function(
    JPH_FixedConstraintSettings*, JPH_Vec3*);
alias JPH_FixedConstraintSettings_SetAxisY2 = void function(
    JPH_FixedConstraintSettings*, const(JPH_Vec3)*);
alias JPH_FixedConstraintSettings_CreateConstraint  = JPH_FixedConstraint* function(
    JPH_FixedConstraintSettings*, JPH_Body*, JPH_Body*) @nogc nothrow;
alias JPH_FixedConstraint_GetTotalLambdaPosition = void function(
    const(JPH_FixedConstraint)*, JPH_Vec3*);
alias JPH_FixedConstraint_GetTotalLambdaRotation = void function(
    const(JPH_FixedConstraint)*, JPH_Vec3*);
alias JPH_DistanceConstraintSettings_Create  = JPH_DistanceConstraintSettings* function() @nogc nothrow;
alias JPH_DistanceConstraintSettings_GetSpace = JPH_ConstraintSpace function(
    JPH_DistanceConstraintSettings*);
alias JPH_DistanceConstraintSettings_SetSpace = void function(
    JPH_DistanceConstraintSettings*, JPH_ConstraintSpace);
alias JPH_DistanceConstraintSettings_GetPoint1 = void function(
    JPH_DistanceConstraintSettings*, JPH_RVec3*);
alias JPH_DistanceConstraintSettings_SetPoint1 = void function(
    JPH_DistanceConstraintSettings*, const(JPH_RVec3)*);
alias JPH_DistanceConstraintSettings_GetPoint2 = void function(
    JPH_DistanceConstraintSettings*, JPH_RVec3*);
alias JPH_DistanceConstraintSettings_SetPoint2 = void function(
    JPH_DistanceConstraintSettings*, const(JPH_RVec3)*);
alias JPH_DistanceConstraintSettings_CreateConstraint  = JPH_DistanceConstraint* function(
    JPH_DistanceConstraintSettings*, JPH_Body*, JPH_Body*) @nogc nothrow;
alias JPH_DistanceConstraint_SetDistance = void function(JPH_DistanceConstraint*, float, float);
alias JPH_DistanceConstraint_GetMinDistance = float function(JPH_DistanceConstraint*);
alias JPH_DistanceConstraint_GetMaxDistance = float function(JPH_DistanceConstraint*);
alias JPH_DistanceConstraint_GetLimitsSpringSettings = void function(
    JPH_DistanceConstraint*, JPH_SpringSettings*);
alias JPH_DistanceConstraint_SetLimitsSpringSettings = void function(
    JPH_DistanceConstraint*, JPH_SpringSettings*);
alias JPH_DistanceConstraint_GetTotalLambdaPosition = float function(
    const(JPH_DistanceConstraint)*);
alias JPH_PointConstraintSettings_Create  = JPH_PointConstraintSettings* function() @nogc nothrow;
alias JPH_PointConstraintSettings_GetSpace = JPH_ConstraintSpace function(
    JPH_PointConstraintSettings*);
alias JPH_PointConstraintSettings_SetSpace = void function(
    JPH_PointConstraintSettings*, JPH_ConstraintSpace);
alias JPH_PointConstraintSettings_GetPoint1 = void function(
    JPH_PointConstraintSettings*, JPH_RVec3*);
alias JPH_PointConstraintSettings_SetPoint1 = void function(
    JPH_PointConstraintSettings*, const(JPH_RVec3)*);
alias JPH_PointConstraintSettings_GetPoint2 = void function(
    JPH_PointConstraintSettings*, JPH_RVec3*);
alias JPH_PointConstraintSettings_SetPoint2 = void function(
    JPH_PointConstraintSettings*, const(JPH_RVec3)*);
alias JPH_PointConstraintSettings_CreateConstraint  = JPH_PointConstraint* function(
    JPH_PointConstraintSettings*, JPH_Body*, JPH_Body*) @nogc nothrow;
alias JPH_PointConstraint_SetPoint1 = void function(JPH_PointConstraint*, JPH_ConstraintSpace, JPH_RVec3*);
alias JPH_PointConstraint_SetPoint2 = void function(JPH_PointConstraint*, JPH_ConstraintSpace, JPH_RVec3*);
alias JPH_PointConstraint_GetTotalLambdaPosition = void function(
    const(JPH_PointConstraint)*, JPH_Vec3*);
alias JPH_HingeConstraintSettings_Create  = JPH_HingeConstraintSettings* function() @nogc nothrow;
alias JPH_HingeConstraintSettings_GetPoint1 = void function(
    JPH_HingeConstraintSettings*, JPH_RVec3*);
alias JPH_HingeConstraintSettings_SetPoint1 = void function(
    JPH_HingeConstraintSettings*, const(JPH_RVec3)*);
alias JPH_HingeConstraintSettings_GetPoint2 = void function(
    JPH_HingeConstraintSettings*, JPH_RVec3*);
alias JPH_HingeConstraintSettings_SetPoint2 = void function(
    JPH_HingeConstraintSettings*, const(JPH_RVec3)*);
alias JPH_HingeConstraintSettings_SetHingeAxis1 = void function(
    JPH_HingeConstraintSettings*, const(JPH_Vec3)*);
alias JPH_HingeConstraintSettings_GetHingeAxis1 = void function(
    JPH_HingeConstraintSettings*, JPH_Vec3*);
alias JPH_HingeConstraintSettings_SetNormalAxis1 = void function(
    JPH_HingeConstraintSettings*, const(JPH_Vec3)*);
alias JPH_HingeConstraintSettings_GetNormalAxis1 = void function(
    JPH_HingeConstraintSettings*, JPH_Vec3*);
alias JPH_HingeConstraintSettings_SetHingeAxis2 = void function(
    JPH_HingeConstraintSettings*, const(JPH_Vec3)*);
alias JPH_HingeConstraintSettings_GetHingeAxis2 = void function(
    JPH_HingeConstraintSettings*, JPH_Vec3*);
alias JPH_HingeConstraintSettings_SetNormalAxis2 = void function(
    JPH_HingeConstraintSettings*, const(JPH_Vec3)*);
alias JPH_HingeConstraintSettings_GetNormalAxis2 = void function(
    JPH_HingeConstraintSettings*, JPH_Vec3*);
alias JPH_HingeConstraintSettings_CreateConstraint  = JPH_HingeConstraint* function(
    JPH_HingeConstraintSettings*, JPH_Body*, JPH_Body*) @nogc nothrow;
alias JPH_HingeConstraint_GetSettings  = JPH_HingeConstraintSettings* function(JPH_HingeConstraint*) @nogc nothrow;
alias JPH_HingeConstraint_GetCurrentAngle = float function(JPH_HingeConstraint*);
alias JPH_HingeConstraint_SetMaxFrictionTorque = void function(JPH_HingeConstraint*, float);
alias JPH_HingeConstraint_GetMaxFrictionTorque = float function(JPH_HingeConstraint*);
alias JPH_HingeConstraint_SetMotorSettings = void function(JPH_HingeConstraint*, JPH_MotorSettings*);
alias JPH_HingeConstraint_GetMotorSettings = void function(JPH_HingeConstraint*, JPH_MotorSettings*);
alias JPH_HingeConstraint_SetMotorState = void function(JPH_HingeConstraint*, JPH_MotorState);
alias JPH_HingeConstraint_GetMotorState = JPH_MotorState function(JPH_HingeConstraint*);
alias JPH_HingeConstraint_SetTargetAngularVelocity = void function(JPH_HingeConstraint*, float);
alias JPH_HingeConstraint_GetTargetAngularVelocity = float function(JPH_HingeConstraint*);
alias JPH_HingeConstraint_SetTargetAngle = void function(JPH_HingeConstraint*, float);
alias JPH_HingeConstraint_GetTargetAngle = float function(JPH_HingeConstraint*);
alias JPH_HingeConstraint_SetLimits = void function(JPH_HingeConstraint*, float, float);
alias JPH_HingeConstraint_GetLimitsMin = float function(JPH_HingeConstraint*);
alias JPH_HingeConstraint_GetLimitsMax = float function(JPH_HingeConstraint*);
alias JPH_HingeConstraint_HasLimits = bool function(JPH_HingeConstraint*);
alias JPH_HingeConstraint_GetLimitsSpringSettings = void function(
    JPH_HingeConstraint*, JPH_SpringSettings*);
alias JPH_HingeConstraint_SetLimitsSpringSettings = void function(
    JPH_HingeConstraint*, JPH_SpringSettings*);
alias JPH_HingeConstraint_GetTotalLambdaPosition = void function(
    const(JPH_HingeConstraint)*, JPH_Vec3*);
alias JPH_HingeConstraint_GetTotalLambdaRotation = void function(
    const(JPH_HingeConstraint)*, float*, float*);
alias JPH_HingeConstraint_GetTotalLambdaRotationLimits = float function(
    const(JPH_HingeConstraint)*);
alias JPH_HingeConstraint_GetTotalLambdaMotor = float function(const(JPH_HingeConstraint)*);
alias JPH_SliderConstraintSettings_Create  = JPH_SliderConstraintSettings* function() @nogc nothrow;
alias JPH_SliderConstraintSettings_SetSliderAxis = void function(
    JPH_SliderConstraintSettings*, const(JPH_Vec3)*);
alias JPH_SliderConstraintSettings_GetAutoDetectPoint = bool function(
    JPH_SliderConstraintSettings*);
alias JPH_SliderConstraintSettings_SetAutoDetectPoint = void function(
    JPH_SliderConstraintSettings*, bool);
alias JPH_SliderConstraintSettings_GetPoint1 = void function(
    JPH_SliderConstraintSettings*, JPH_RVec3*);
alias JPH_SliderConstraintSettings_SetPoint1 = void function(
    JPH_SliderConstraintSettings*, const(JPH_RVec3)*);
alias JPH_SliderConstraintSettings_GetPoint2 = void function(
    JPH_SliderConstraintSettings*, JPH_RVec3*);
alias JPH_SliderConstraintSettings_SetPoint2 = void function(
    JPH_SliderConstraintSettings*, const(JPH_RVec3)*);
alias JPH_SliderConstraintSettings_SetSliderAxis1 = void function(
    JPH_SliderConstraintSettings*, const(JPH_Vec3)*);
alias JPH_SliderConstraintSettings_GetSliderAxis1 = void function(
    JPH_SliderConstraintSettings*, JPH_Vec3*);
alias JPH_SliderConstraintSettings_SetNormalAxis1 = void function(
    JPH_SliderConstraintSettings*, const(JPH_Vec3)*);
alias JPH_SliderConstraintSettings_GetNormalAxis1 = void function(
    JPH_SliderConstraintSettings*, JPH_Vec3*);
alias JPH_SliderConstraintSettings_SetSliderAxis2 = void function(
    JPH_SliderConstraintSettings*, const(JPH_Vec3)*);
alias JPH_SliderConstraintSettings_GetSliderAxis2 = void function(
    JPH_SliderConstraintSettings*, JPH_Vec3*);
alias JPH_SliderConstraintSettings_SetNormalAxis2 = void function(
    JPH_SliderConstraintSettings*, const(JPH_Vec3)*);
alias JPH_SliderConstraintSettings_GetNormalAxis2 = void function(
    JPH_SliderConstraintSettings*, JPH_Vec3*);
alias JPH_SliderConstraintSettings_CreateConstraint  = JPH_SliderConstraint* function(
    JPH_SliderConstraintSettings*, JPH_Body*, JPH_Body*) @nogc nothrow;
alias JPH_SliderConstraint_GetSettings  = JPH_SliderConstraintSettings* function(JPH_SliderConstraint*) @nogc nothrow;
alias JPH_SliderConstraint_GetCurrentPosition = float function(JPH_SliderConstraint*);
alias JPH_SliderConstraint_SetMaxFrictionForce = void function(JPH_SliderConstraint*, float);
alias JPH_SliderConstraint_GetMaxFrictionForce = float function(JPH_SliderConstraint*);
alias JPH_SliderConstraint_SetMotorSettings = void function(JPH_SliderConstraint*, JPH_MotorSettings*);
alias JPH_SliderConstraint_GetMotorSettings = void function(JPH_SliderConstraint*, JPH_MotorSettings*);
alias JPH_SliderConstraint_SetMotorState = void function(JPH_SliderConstraint*, JPH_MotorState);
alias JPH_SliderConstraint_GetMotorState = JPH_MotorState function(JPH_SliderConstraint*);
alias JPH_SliderConstraint_SetTargetVelocity = void function(JPH_SliderConstraint*, float);
alias JPH_SliderConstraint_GetTargetVelocity = float function(JPH_SliderConstraint*);
alias JPH_SliderConstraint_SetTargetPosition = void function(JPH_SliderConstraint*, float);
alias JPH_SliderConstraint_GetTargetPosition = float function(JPH_SliderConstraint*);
alias JPH_SliderConstraint_SetLimits = void function(JPH_SliderConstraint*, float, float);
alias JPH_SliderConstraint_GetLimitsMin = float function(JPH_SliderConstraint*);
alias JPH_SliderConstraint_GetLimitsMax = float function(JPH_SliderConstraint*);
alias JPH_SliderConstraint_HasLimits = bool function(JPH_SliderConstraint*);
alias JPH_SliderConstraint_GetLimitsSpringSettings = void function(
    JPH_SliderConstraint*, JPH_SpringSettings*);
alias JPH_SliderConstraint_SetLimitsSpringSettings = void function(
    JPH_SliderConstraint*, JPH_SpringSettings*);
alias JPH_SliderConstraint_GetTotalLambdaPosition = void function(
    const(JPH_SliderConstraint)*, float*, float*);
alias JPH_SliderConstraint_GetTotalLambdaPositionLimits = float function(
    const(JPH_SliderConstraint)*);
alias JPH_SliderConstraint_GetTotalLambdaRotation = void function(
    const(JPH_SliderConstraint)*, JPH_Vec3*);
alias JPH_SliderConstraint_GetTotalLambdaMotor = float function(const(JPH_SliderConstraint)*);
alias JPH_ConeConstraintSettings_Create  = JPH_ConeConstraintSettings* function() @nogc nothrow;
alias JPH_ConeConstraintSettings_GetPoint1 = void function(
    JPH_ConeConstraintSettings*, JPH_RVec3*);
alias JPH_ConeConstraintSettings_SetPoint1 = void function(
    JPH_ConeConstraintSettings*, const(JPH_RVec3)*);
alias JPH_ConeConstraintSettings_GetPoint2 = void function(
    JPH_ConeConstraintSettings*, JPH_RVec3*);
alias JPH_ConeConstraintSettings_SetPoint2 = void function(
    JPH_ConeConstraintSettings*, const(JPH_RVec3)*);
alias JPH_ConeConstraintSettings_SetTwistAxis1 = void function(
    JPH_ConeConstraintSettings*, const(JPH_Vec3)*);
alias JPH_ConeConstraintSettings_GetTwistAxis1 = void function(
    JPH_ConeConstraintSettings*, JPH_Vec3*);
alias JPH_ConeConstraintSettings_SetTwistAxis2 = void function(
    JPH_ConeConstraintSettings*, const(JPH_Vec3)*);
alias JPH_ConeConstraintSettings_GetTwistAxis2 = void function(
    JPH_ConeConstraintSettings*, JPH_Vec3*);
alias JPH_ConeConstraintSettings_SetHalfConeAngle = void function(
    JPH_ConeConstraintSettings*, float);
alias JPH_ConeConstraintSettings_GetHalfConeAngle = float function(JPH_ConeConstraintSettings*);
alias JPH_ConeConstraintSettings_CreateConstraint  = JPH_ConeConstraint* function(
    JPH_ConeConstraintSettings*, JPH_Body*, JPH_Body*) @nogc nothrow;
alias JPH_ConeConstraint_SetHalfConeAngle = void function(JPH_ConeConstraint*, float);
alias JPH_ConeConstraint_GetCosHalfConeAngle = float function(const(JPH_ConeConstraint)*);
alias JPH_ConeConstraint_GetTotalLambdaPosition = void function(
    const(JPH_ConeConstraint)*, JPH_Vec3*);
alias JPH_ConeConstraint_GetTotalLambdaRotation = float function(const(JPH_ConeConstraint)*);
alias JPH_SwingTwistConstraintSettings_Create  = JPH_SwingTwistConstraintSettings* function() @nogc nothrow;
alias JPH_SwingTwistConstraintSettings_CreateConstraint  = JPH_SwingTwistConstraint* function(
    JPH_SwingTwistConstraintSettings*, JPH_Body*, JPH_Body*) @nogc nothrow;
alias JPH_SwingTwistConstraint_GetNormalHalfConeAngle = float function(JPH_SwingTwistConstraint*);
alias JPH_SwingTwistConstraint_GetTotalLambdaPosition = void function(
    const(JPH_SwingTwistConstraint)*, JPH_Vec3*);
alias JPH_SwingTwistConstraint_GetTotalLambdaTwist = float function(
    const(JPH_SwingTwistConstraint)*);
alias JPH_SwingTwistConstraint_GetTotalLambdaSwingY = float function(
    const(JPH_SwingTwistConstraint)*);
alias JPH_SwingTwistConstraint_GetTotalLambdaSwingZ = float function(
    const(JPH_SwingTwistConstraint)*);
alias JPH_SwingTwistConstraint_GetTotalLambdaMotor = void function(
    const(JPH_SwingTwistConstraint)*, JPH_Vec3*);
alias JPH_SixDOFConstraintSettings_Create  = JPH_SixDOFConstraintSettings* function() @nogc nothrow;
alias JPH_SixDOFConstraintSettings_CreateConstraint  = JPH_SixDOFConstraint* function(
    JPH_SixDOFConstraintSettings*, JPH_Body*, JPH_Body*) @nogc nothrow;
alias JPH_SixDOFConstraint_GetLimitsMin = float function(JPH_SixDOFConstraint*, JPH_SixDOFConstraintAxis);
alias JPH_SixDOFConstraint_GetLimitsMax = float function(JPH_SixDOFConstraint*, JPH_SixDOFConstraintAxis);
alias JPH_SixDOFConstraint_GetTotalLambdaPosition = void function(
    const(JPH_SixDOFConstraint)*, JPH_Vec3*);
alias JPH_SixDOFConstraint_GetTotalLambdaRotation = void function(
    const(JPH_SixDOFConstraint)*, JPH_Vec3*);
alias JPH_SixDOFConstraint_GetTotalLambdaMotorTranslation = void function(
    const(JPH_SixDOFConstraint)*, JPH_Vec3*);
alias JPH_SixDOFConstraint_GetTotalLambdaMotorRotation = void function(
    const(JPH_SixDOFConstraint)*, JPH_Vec3*);
alias JPH_TwoBodyConstraint_GetBody1  = JPH_Body* function(JPH_TwoBodyConstraint*) @nogc nothrow;
alias JPH_TwoBodyConstraint_GetBody2  = JPH_Body* function(JPH_TwoBodyConstraint*) @nogc nothrow;
alias JPH_TwoBodyConstraint_GetConstraintToBody1Matrix = void function(
    JPH_TwoBodyConstraint*, JPH_Matrix4x4*);
alias JPH_TwoBodyConstraint_GetConstraintToBody2Matrix = void function(
    JPH_TwoBodyConstraint*, JPH_Matrix4x4*);
alias JPH_BodyInterface_DestroyBody = void function(JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyInterface_CreateAndAddBody = JPH_BodyID function(JPH_BodyInterface*, const(
        JPH_BodyCreationSettings)*, JPH_Activation);
alias JPH_BodyInterface_CreateBody  = JPH_Body* function(JPH_BodyInterface*, const(JPH_BodyCreationSettings)*) @nogc nothrow;
alias JPH_BodyInterface_CreateBodyWithID  = JPH_Body* function(JPH_BodyInterface*, JPH_BodyID, const(
        JPH_BodyCreationSettings)*) @nogc nothrow;
alias JPH_BodyInterface_CreateBodyWithoutID  = JPH_Body* function(JPH_BodyInterface*, const(JPH_BodyCreationSettings)*) @nogc nothrow;
alias JPH_BodyInterface_DestroyBodyWithoutID = void function(JPH_BodyInterface*, JPH_Body*);
alias JPH_BodyInterface_AssignBodyID = bool function(JPH_BodyInterface*, JPH_Body*);
alias JPH_BodyInterface_AssignBodyID2 = bool function(JPH_BodyInterface*, JPH_Body*, JPH_BodyID);
alias JPH_BodyInterface_UnassignBodyID  = JPH_Body* function(JPH_BodyInterface*, JPH_BodyID) @nogc nothrow;
alias JPH_BodyInterface_CreateSoftBody  = JPH_Body* function(JPH_BodyInterface*, const(JPH_SoftBodyCreationSettings)*) @nogc nothrow;
alias JPH_BodyInterface_CreateSoftBodyWithID  = JPH_Body* function(JPH_BodyInterface*, JPH_BodyID, const(
        JPH_SoftBodyCreationSettings)*) @nogc nothrow;
alias JPH_BodyInterface_CreateSoftBodyWithoutID  = JPH_Body* function(JPH_BodyInterface*, const(
        JPH_SoftBodyCreationSettings)*) @nogc nothrow;
alias JPH_BodyInterface_CreateAndAddSoftBody  = JPH_BodyID function(JPH_BodyInterface*, const(
        JPH_SoftBodyCreationSettings)*, JPH_Activation) @nogc nothrow;
alias JPH_BodyInterface_AddBody = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Activation);
alias JPH_BodyInterface_RemoveBody = void function(JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyInterface_RemoveAndDestroyBody = void function(JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyInterface_IsActive = bool function(JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyInterface_IsAdded = bool function(JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyInterface_GetBodyType = JPH_BodyType function(JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyInterface_SetLinearVelocity = void function(JPH_BodyInterface*, JPH_BodyID, const(
        JPH_Vec3)*);
alias JPH_BodyInterface_GetLinearVelocity = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*);
alias JPH_BodyInterface_GetCenterOfMassPosition = void function(
    JPH_BodyInterface*, JPH_BodyID, JPH_RVec3*);
alias JPH_BodyInterface_GetMotionType = JPH_MotionType function(JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyInterface_SetMotionType = void function(JPH_BodyInterface*, JPH_BodyID, JPH_MotionType, JPH_Activation);
alias JPH_BodyInterface_GetRestitution = float function(const(JPH_BodyInterface)*, JPH_BodyID);
alias JPH_BodyInterface_SetRestitution = void function(JPH_BodyInterface*, JPH_BodyID, float);
alias JPH_BodyInterface_GetFriction = float function(const(JPH_BodyInterface)*, JPH_BodyID);
alias JPH_BodyInterface_SetFriction = void function(JPH_BodyInterface*, JPH_BodyID, float);
alias JPH_BodyInterface_SetPosition = void function(JPH_BodyInterface*, JPH_BodyID, JPH_RVec3*, JPH_Activation);
alias JPH_BodyInterface_GetPosition = void function(JPH_BodyInterface*, JPH_BodyID, JPH_RVec3*);
alias JPH_BodyInterface_SetRotation = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Quat*, JPH_Activation);
alias JPH_BodyInterface_GetRotation = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Quat*);
alias JPH_BodyInterface_SetPositionAndRotation  = void function(JPH_BodyInterface*, JPH_BodyID, const(JPH_RVec3)*, const(
        JPH_Quat)*, JPH_Activation) @nogc nothrow;
alias JPH_BodyInterface_SetPositionAndRotationWhenChanged  = void function(JPH_BodyInterface*, JPH_BodyID, const(
        JPH_RVec3)*, const(JPH_Quat)*, JPH_Activation) @nogc nothrow;
alias JPH_BodyInterface_GetPositionAndRotation = void function(JPH_BodyInterface*, JPH_BodyID, JPH_RVec3*, JPH_Quat*);
alias JPH_BodyInterface_SetPositionRotationAndVelocity = void function(
    JPH_BodyInterface*, JPH_BodyID, JPH_RVec3*, JPH_Quat*, JPH_Vec3*, JPH_Vec3*);
alias JPH_BodyInterface_GetShape = const(JPH_Shape)* function(JPH_BodyInterface*, JPH_BodyID) @nogc nothrow;
alias JPH_BodyInterface_SetShape = void function(JPH_BodyInterface*, JPH_BodyID, const(JPH_Shape)*, bool, JPH_Activation);
alias JPH_BodyInterface_NotifyShapeChanged = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*, bool, JPH_Activation);
alias JPH_BodyInterface_ActivateBody = void function(JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyInterface_DeactivateBody = void function(JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyInterface_GetObjectLayer = JPH_ObjectLayer function(JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyInterface_SetObjectLayer = void function(JPH_BodyInterface*, JPH_BodyID, JPH_ObjectLayer);
alias JPH_BodyInterface_GetWorldTransform = void function(JPH_BodyInterface*, JPH_BodyID, JPH_RMatrix4x4*);
alias JPH_BodyInterface_GetCenterOfMassTransform = void function(
    JPH_BodyInterface*, JPH_BodyID, JPH_RMatrix4x4*);
alias JPH_BodyInterface_MoveKinematic = void function(JPH_BodyInterface*, JPH_BodyID, JPH_RVec3*, JPH_Quat*, float);
alias JPH_BodyInterface_ApplyBuoyancyImpulse  = bool function(JPH_BodyInterface*, JPH_BodyID, const(JPH_RVec3)*, const(
        JPH_Vec3)*, float, float, float, const(JPH_Vec3)*, const(JPH_Vec3)*, float) @nogc nothrow;
alias JPH_BodyInterface_SetLinearAndAngularVelocity = void function(
    JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*, JPH_Vec3*);
alias JPH_BodyInterface_GetLinearAndAngularVelocity = void function(
    JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*, JPH_Vec3*);
alias JPH_BodyInterface_AddLinearVelocity = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*);
alias JPH_BodyInterface_AddLinearAndAngularVelocity = void function(
    JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*, JPH_Vec3*);
alias JPH_BodyInterface_SetAngularVelocity = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*);
alias JPH_BodyInterface_GetAngularVelocity = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*);
alias JPH_BodyInterface_GetPointVelocity = void function(JPH_BodyInterface*, JPH_BodyID, JPH_RVec3*, JPH_Vec3*);
alias JPH_BodyInterface_AddForce = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*);
alias JPH_BodyInterface_AddForce2 = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*, JPH_RVec3*);
alias JPH_BodyInterface_AddTorque = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*);
alias JPH_BodyInterface_AddForceAndTorque = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*, JPH_Vec3*);
alias JPH_BodyInterface_AddImpulse = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*);
alias JPH_BodyInterface_AddImpulse2 = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*, JPH_RVec3*);
alias JPH_BodyInterface_AddAngularImpulse = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Vec3*);
alias JPH_BodyInterface_SetMotionQuality = void function(JPH_BodyInterface*, JPH_BodyID, JPH_MotionQuality);
alias JPH_BodyInterface_GetMotionQuality = JPH_MotionQuality function(
    JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyInterface_GetInverseInertia = void function(JPH_BodyInterface*, JPH_BodyID, JPH_Matrix4x4*);
alias JPH_BodyInterface_SetGravityFactor = void function(JPH_BodyInterface*, JPH_BodyID, float);
alias JPH_BodyInterface_GetGravityFactor = float function(JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyInterface_SetUseManifoldReduction = void function(
    JPH_BodyInterface*, JPH_BodyID, bool);
alias JPH_BodyInterface_GetUseManifoldReduction = bool function(JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyInterface_SetUserData = void function(JPH_BodyInterface*, JPH_BodyID, uint64_t);
alias JPH_BodyInterface_GetUserData = uint64_t function(JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyInterface_GetMaterial = const(JPH_PhysicsMaterial)* function(JPH_BodyInterface*, JPH_BodyID, JPH_SubShapeID) @nogc nothrow;
alias JPH_BodyInterface_InvalidateContactCache = void function(JPH_BodyInterface*, JPH_BodyID);
alias JPH_BodyLockInterface_LockRead = void function(
    const(JPH_BodyLockInterface)*, JPH_BodyID, JPH_BodyLockRead*);
alias JPH_BodyLockInterface_UnlockRead = void function(
    const(JPH_BodyLockInterface)*, JPH_BodyLockRead*);
alias JPH_BodyLockInterface_LockWrite = void function(
    const(JPH_BodyLockInterface)*, JPH_BodyID, JPH_BodyLockWrite*);
alias JPH_BodyLockInterface_UnlockWrite = void function(
    const(JPH_BodyLockInterface)*, JPH_BodyLockWrite*);
alias JPH_MotionProperties_GetAllowedDOFs = JPH_AllowedDOFs function(const(JPH_MotionProperties)*);
alias JPH_MotionProperties_SetLinearDamping = void function(JPH_MotionProperties*, float);
alias JPH_MotionProperties_GetLinearDamping = float function(const(JPH_MotionProperties)*);
alias JPH_MotionProperties_SetAngularDamping = void function(JPH_MotionProperties*, float);
alias JPH_MotionProperties_GetAngularDamping = float function(const(JPH_MotionProperties)*);
alias JPH_MotionProperties_SetMassProperties  = void function(JPH_MotionProperties*, JPH_AllowedDOFs, const(
        JPH_MassProperties)*) @nogc nothrow;
alias JPH_MotionProperties_GetInverseMassUnchecked = float function(JPH_MotionProperties*);
alias JPH_MotionProperties_SetInverseMass = void function(JPH_MotionProperties*, float);
alias JPH_MotionProperties_GetInverseInertiaDiagonal = void function(
    JPH_MotionProperties*, JPH_Vec3*);
alias JPH_MotionProperties_GetInertiaRotation = void function(JPH_MotionProperties*, JPH_Quat*);
alias JPH_MotionProperties_SetInverseInertia = void function(
    JPH_MotionProperties*, JPH_Vec3*, JPH_Quat*);
alias JPH_MotionProperties_ScaleToMass = void function(JPH_MotionProperties*, float);
alias JPH_MassProperties_DecomposePrincipalMomentsOfInertia = void function(
    JPH_MassProperties*, JPH_Matrix4x4*, JPH_Vec3*);
alias JPH_MassProperties_ScaleToMass = void function(JPH_MassProperties*, float);
alias JPH_MassProperties_GetEquivalentSolidBoxSize = void function(float, const(JPH_Vec3)*, JPH_Vec3*);
alias JPH_CollideShapeSettings_Init = void function(JPH_CollideShapeSettings*);
alias JPH_ShapeCastSettings_Init = void function(JPH_ShapeCastSettings*);
alias JPH_BroadPhaseQuery_CastRay = bool function(const(JPH_BroadPhaseQuery)*, const(JPH_Vec3)*, const(JPH_Vec3)*, JPH_RayCastBodyCollector, void*, JPH_BroadPhaseLayerFilter*, JPH_ObjectLayerFilter*);
alias JPH_BroadPhaseQuery_CastRay2 = bool function(const(JPH_BroadPhaseQuery)*, const(JPH_Vec3)*, const(JPH_Vec3)*, JPH_CollisionCollectorType, JPH_RayCastBodyResultCallback, void*, JPH_BroadPhaseLayerFilter*, JPH_ObjectLayerFilter*);
alias JPH_BroadPhaseQuery_CollideAABox = bool function(const(JPH_BroadPhaseQuery)*, const(JPH_AABox)*, JPH_CollideShapeBodyCollector, void*, JPH_BroadPhaseLayerFilter*, JPH_ObjectLayerFilter*);
alias JPH_BroadPhaseQuery_CollideSphere = bool function(const(JPH_BroadPhaseQuery)*, const(JPH_Vec3)*, float, JPH_CollideShapeBodyCollector, void*, JPH_BroadPhaseLayerFilter*, JPH_ObjectLayerFilter*);
alias JPH_BroadPhaseQuery_CollidePoint = bool function(const(JPH_BroadPhaseQuery)*, const(JPH_Vec3)*, JPH_CollideShapeBodyCollector, void*, JPH_BroadPhaseLayerFilter*, JPH_ObjectLayerFilter*);
alias JPH_NarrowPhaseQuery_CastRay  = bool function(const(JPH_NarrowPhaseQuery)*, const(JPH_RVec3)*, const(JPH_Vec3)*, JPH_RayCastResult*, JPH_BroadPhaseLayerFilter*, JPH_ObjectLayerFilter*, const(
        JPH_BodyFilter)*) @nogc nothrow;
alias JPH_NarrowPhaseQuery_CastRay2  = bool function(const(JPH_NarrowPhaseQuery)*, const(JPH_RVec3)*, const(JPH_Vec3)*, const(
        JPH_RayCastSettings)*, JPH_CastRayCollector, void*, JPH_BroadPhaseLayerFilter*, JPH_ObjectLayerFilter*, const(
        JPH_BodyFilter)*, const(JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_NarrowPhaseQuery_CastRay3  = bool function(const(JPH_NarrowPhaseQuery)*, const(JPH_RVec3)*, const(JPH_Vec3)*, const(
        JPH_RayCastSettings)*, JPH_CollisionCollectorType, JPH_CastRayResultCallback, void*, JPH_BroadPhaseLayerFilter*, JPH_ObjectLayerFilter*, const(
        JPH_BodyFilter)*, const(JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_NarrowPhaseQuery_CollidePoint  = bool function(const(JPH_NarrowPhaseQuery)*, const(JPH_RVec3)*, JPH_CollidePointCollector, void*, JPH_BroadPhaseLayerFilter*, JPH_ObjectLayerFilter*, const(
        JPH_BodyFilter)*, const(JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_NarrowPhaseQuery_CollidePoint2  = bool function(const(JPH_NarrowPhaseQuery)*, const(JPH_RVec3)*, JPH_CollisionCollectorType, JPH_CollidePointResultCallback, void*, JPH_BroadPhaseLayerFilter*, JPH_ObjectLayerFilter*, const(
        JPH_BodyFilter)*, const(JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_NarrowPhaseQuery_CollideShape  = bool function(const(JPH_NarrowPhaseQuery)*, const(JPH_Shape)*, const(
        JPH_Vec3)*, const(JPH_RMatrix4x4)*, const(JPH_CollideShapeSettings)*, JPH_RVec3*, JPH_CollideShapeCollector, void*, JPH_BroadPhaseLayerFilter*, JPH_ObjectLayerFilter*, const(
        JPH_BodyFilter)*, const(JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_NarrowPhaseQuery_CollideShape2  = bool function(const(JPH_NarrowPhaseQuery)*, const(JPH_Shape)*, const(
        JPH_Vec3)*, const(JPH_RMatrix4x4)*, const(JPH_CollideShapeSettings)*, JPH_RVec3*, JPH_CollisionCollectorType, JPH_CollideShapeResultCallback, void*, JPH_BroadPhaseLayerFilter*, JPH_ObjectLayerFilter*, const(
        JPH_BodyFilter)*, const(JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_NarrowPhaseQuery_CastShape  = bool function(const(JPH_NarrowPhaseQuery)*, const(JPH_Shape)*, const(
        JPH_RMatrix4x4)*, const(JPH_Vec3)*, const(JPH_ShapeCastSettings)*, JPH_RVec3*, JPH_CastShapeCollector, void*, JPH_BroadPhaseLayerFilter*, JPH_ObjectLayerFilter*, const(
        JPH_BodyFilter)*, const(JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_NarrowPhaseQuery_CastShape2  = bool function(const(JPH_NarrowPhaseQuery)*, const(JPH_Shape)*, const(
        JPH_RMatrix4x4)*, const(JPH_Vec3)*, const(JPH_ShapeCastSettings)*, JPH_RVec3*, JPH_CollisionCollectorType, JPH_CastShapeResultCallback, void*, JPH_BroadPhaseLayerFilter*, JPH_ObjectLayerFilter*, const(
        JPH_BodyFilter)*, const(JPH_ShapeFilter)*) @nogc nothrow;
alias JPH_Body_GetID = JPH_BodyID function(const(JPH_Body)*);
alias JPH_Body_GetBodyType = JPH_BodyType function(const(JPH_Body)*);
alias JPH_Body_IsRigidBody = bool function(const(JPH_Body)*);
alias JPH_Body_IsSoftBody = bool function(const(JPH_Body)*);
alias JPH_Body_IsActive = bool function(const(JPH_Body)*);
alias JPH_Body_IsStatic = bool function(const(JPH_Body)*);
alias JPH_Body_IsKinematic = bool function(const(JPH_Body)*);
alias JPH_Body_IsDynamic = bool function(const(JPH_Body)*);
alias JPH_Body_CanBeKinematicOrDynamic = bool function(const(JPH_Body)*);
alias JPH_Body_SetIsSensor = void function(JPH_Body*, bool);
alias JPH_Body_IsSensor = bool function(const(JPH_Body)*);
alias JPH_Body_SetCollideKinematicVsNonDynamic = void function(JPH_Body*, bool);
alias JPH_Body_GetCollideKinematicVsNonDynamic = bool function(const(JPH_Body)*);
alias JPH_Body_SetUseManifoldReduction = void function(JPH_Body*, bool);
alias JPH_Body_GetUseManifoldReduction = bool function(const(JPH_Body)*);
alias JPH_Body_GetUseManifoldReductionWithBody = bool function(const(JPH_Body)*, const(JPH_Body)*);
alias JPH_Body_SetApplyGyroscopicForce = void function(JPH_Body*, bool);
alias JPH_Body_GetApplyGyroscopicForce = bool function(const(JPH_Body)*);
alias JPH_Body_SetEnhancedInternalEdgeRemoval = void function(JPH_Body*, bool);
alias JPH_Body_GetEnhancedInternalEdgeRemoval = bool function(const(JPH_Body)*);
alias JPH_Body_GetEnhancedInternalEdgeRemovalWithBody = bool function(
    const(JPH_Body)*, const(JPH_Body)*);
alias JPH_Body_GetMotionType = JPH_MotionType function(const(JPH_Body)*);
alias JPH_Body_SetMotionType = void function(JPH_Body*, JPH_MotionType);
alias JPH_Body_GetBroadPhaseLayer = JPH_BroadPhaseLayer function(const(JPH_Body)*);
alias JPH_Body_GetObjectLayer = JPH_ObjectLayer function(const(JPH_Body)*);
alias JPH_Body_GetAllowSleeping = bool function(JPH_Body*);
alias JPH_Body_SetAllowSleeping = void function(JPH_Body*, bool);
alias JPH_Body_ResetSleepTimer = void function(JPH_Body*);
alias JPH_Body_GetFriction = float function(const(JPH_Body)*);
alias JPH_Body_SetFriction = void function(JPH_Body*, float);
alias JPH_Body_GetRestitution = float function(const(JPH_Body)*);
alias JPH_Body_SetRestitution = void function(JPH_Body*, float);
alias JPH_Body_GetLinearVelocity = void function(JPH_Body*, JPH_Vec3*);
alias JPH_Body_SetLinearVelocity = void function(JPH_Body*, const(JPH_Vec3)*);
alias JPH_Body_SetLinearVelocityClamped = void function(JPH_Body*, const(JPH_Vec3)*);
alias JPH_Body_GetAngularVelocity = void function(JPH_Body*, JPH_Vec3*);
alias JPH_Body_SetAngularVelocity = void function(JPH_Body*, const(JPH_Vec3)*);
alias JPH_Body_SetAngularVelocityClamped = void function(JPH_Body*, const(JPH_Vec3)*);
alias JPH_Body_GetPointVelocityCOM = void function(JPH_Body*, const(JPH_Vec3)*, JPH_Vec3*);
alias JPH_Body_GetPointVelocity = void function(JPH_Body*, const(JPH_RVec3)*, JPH_Vec3*);
alias JPH_Body_AddForce = void function(JPH_Body*, const(JPH_Vec3)*);
alias JPH_Body_AddForceAtPosition = void function(JPH_Body*, const(JPH_Vec3)*, const(JPH_RVec3)*);
alias JPH_Body_AddTorque = void function(JPH_Body*, const(JPH_Vec3)*);
alias JPH_Body_GetAccumulatedForce = void function(JPH_Body*, JPH_Vec3*);
alias JPH_Body_GetAccumulatedTorque = void function(JPH_Body*, JPH_Vec3*);
alias JPH_Body_ResetForce = void function(JPH_Body*);
alias JPH_Body_ResetTorque = void function(JPH_Body*);
alias JPH_Body_ResetMotion = void function(JPH_Body*);
alias JPH_Body_GetInverseInertia = void function(JPH_Body*, JPH_Matrix4x4*);
alias JPH_Body_AddImpulse = void function(JPH_Body*, const(JPH_Vec3)*);
alias JPH_Body_AddImpulseAtPosition = void function(JPH_Body*, const(JPH_Vec3)*, const(JPH_RVec3)*);
alias JPH_Body_AddAngularImpulse = void function(JPH_Body*, const(JPH_Vec3)*);
alias JPH_Body_MoveKinematic = void function(JPH_Body*, JPH_RVec3*, JPH_Quat*, float);
alias JPH_Body_ApplyBuoyancyImpulse  = bool function(JPH_Body*, const(JPH_RVec3)*, const(JPH_Vec3)*, float, float, float, const(
        JPH_Vec3)*, const(JPH_Vec3)*, float) @nogc nothrow;
alias JPH_Body_IsInBroadPhase = bool function(JPH_Body*);
alias JPH_Body_IsCollisionCacheInvalid = bool function(JPH_Body*);
alias JPH_Body_GetShape = const(JPH_Shape)* function(JPH_Body*) @nogc nothrow;
alias JPH_Body_GetPosition = void function(const(JPH_Body)*, JPH_RVec3*);
alias JPH_Body_GetRotation = void function(const(JPH_Body)*, JPH_Quat*);
alias JPH_Body_GetWorldTransform = void function(const(JPH_Body)*, JPH_RMatrix4x4*);
alias JPH_Body_GetCenterOfMassPosition = void function(const(JPH_Body)*, JPH_RVec3*);
alias JPH_Body_GetCenterOfMassTransform = void function(const(JPH_Body)*, JPH_RMatrix4x4*);
alias JPH_Body_GetInverseCenterOfMassTransform = void function(const(JPH_Body)*, JPH_RMatrix4x4*);
alias JPH_Body_GetWorldSpaceBounds = void function(const(JPH_Body)*, JPH_AABox*);
alias JPH_Body_GetWorldSpaceSurfaceNormal = void function(const(JPH_Body)*, JPH_SubShapeID, const(
        JPH_RVec3)*, JPH_Vec3*);
alias JPH_Body_GetMotionProperties  = JPH_MotionProperties* function(JPH_Body*) @nogc nothrow;
alias JPH_Body_GetMotionPropertiesUnchecked  = JPH_MotionProperties* function(JPH_Body*) @nogc nothrow;
alias JPH_Body_SetUserData = void function(JPH_Body*, uint64_t);
alias JPH_Body_GetUserData = uint64_t function(JPH_Body*);
alias JPH_Body_GetFixedToWorldBody  = JPH_Body* function() @nogc nothrow;
alias JPH_BroadPhaseLayerFilter_Create  = JPH_BroadPhaseLayerFilter* function(JPH_BroadPhaseLayerFilter_Procs, void*) @nogc nothrow;
alias JPH_BroadPhaseLayerFilter_Destroy = void function(JPH_BroadPhaseLayerFilter*);
alias JPH_ObjectLayerFilter_Create  = JPH_ObjectLayerFilter* function(JPH_ObjectLayerFilter_Procs, void*) @nogc nothrow;
alias JPH_ObjectLayerFilter_Destroy = void function(JPH_ObjectLayerFilter*);
alias JPH_BodyFilter_Create  = JPH_BodyFilter* function(JPH_BodyFilter_Procs, void*) @nogc nothrow;
alias JPH_BodyFilter_Destroy = void function(JPH_BodyFilter*);
alias JPH_ShapeFilter_Create  = JPH_ShapeFilter* function(JPH_ShapeFilter_Procs, void*) @nogc nothrow;
alias JPH_ShapeFilter_Destroy = void function(JPH_ShapeFilter*);
alias JPH_ShapeFilter_GetBodyID2 = JPH_BodyID function(JPH_ShapeFilter*);
alias JPH_ShapeFilter_SetBodyID2 = void function(JPH_ShapeFilter*, JPH_BodyID);
alias JPH_ContactListener_Create  = JPH_ContactListener* function(JPH_ContactListener_Procs, void*) @nogc nothrow;
alias JPH_ContactListener_Destroy = void function(JPH_ContactListener*);
alias JPH_BodyActivationListener_Create  = JPH_BodyActivationListener* function(
    JPH_BodyActivationListener_Procs, void*) @nogc nothrow;
alias JPH_BodyActivationListener_Destroy = void function(JPH_BodyActivationListener*);
alias JPH_BodyDrawFilter_Create  = JPH_BodyDrawFilter* function(JPH_BodyDrawFilter_Procs, void*) @nogc nothrow;
alias JPH_BodyDrawFilter_Destroy = void function(JPH_BodyDrawFilter*);
alias JPH_ContactManifold_GetWorldSpaceNormal = void function(
    const(JPH_ContactManifold)*, JPH_Vec3*);
alias JPH_ContactManifold_GetPenetrationDepth = float function(const(JPH_ContactManifold)*);
alias JPH_ContactManifold_GetSubShapeID1 = JPH_SubShapeID function(const(JPH_ContactManifold)*);
alias JPH_ContactManifold_GetSubShapeID2 = JPH_SubShapeID function(const(JPH_ContactManifold)*);
alias JPH_ContactManifold_GetPointCount = uint32_t function(const(JPH_ContactManifold)*);
alias JPH_ContactManifold_GetWorldSpaceContactPointOn1 = void function(
    const(JPH_ContactManifold)*, uint32_t, JPH_RVec3*);
alias JPH_ContactManifold_GetWorldSpaceContactPointOn2 = void function(
    const(JPH_ContactManifold)*, uint32_t, JPH_RVec3*);
alias JPH_ContactSettings_GetFriction = float function(JPH_ContactSettings*);
alias JPH_ContactSettings_SetFriction = void function(JPH_ContactSettings*, float);
alias JPH_ContactSettings_GetRestitution = float function(JPH_ContactSettings*);
alias JPH_ContactSettings_SetRestitution = void function(JPH_ContactSettings*, float);
alias JPH_ContactSettings_GetInvMassScale1 = float function(JPH_ContactSettings*);
alias JPH_ContactSettings_SetInvMassScale1 = void function(JPH_ContactSettings*, float);
alias JPH_ContactSettings_GetInvInertiaScale1 = float function(JPH_ContactSettings*);
alias JPH_ContactSettings_SetInvInertiaScale1 = void function(JPH_ContactSettings*, float);
alias JPH_ContactSettings_GetInvMassScale2 = float function(JPH_ContactSettings*);