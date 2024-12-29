module bindbc.joltc.types;

import core.stdc.config;
import core.stdc.stdarg : va_list;
static import core.simd;
static import std.conv;

extern (C):
alias size_t = ulong;
extern __gshared uintptr_t __security_cookie;
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
struct JPH_DebugRenderer_Procs
{
    void function(void*, const(JPH_RVec3)*, const(JPH_RVec3)*, JPH_Color) DrawLine;
    void function(void*, const(JPH_RVec3)*, const(JPH_RVec3)*, const(JPH_RVec3)*, JPH_Color, JPH_DebugRenderer_CastShadow) DrawTriangle;
    void function(void*, const(JPH_RVec3)*, const(char)*, JPH_Color, float) DrawText3D;
}

alias JPH_CharacterContactListener_Destroy = void function(JPH_CharacterContactListener*);
alias JPH_CharacterContactListener_Create  = JPH_CharacterContactListener* function(
    JPH_CharacterContactListener_Procs, void*) @nogc nothrow;
struct JPH_CharacterContactListener_Procs
{
    void function(void*, const(JPH_CharacterVirtual)*, const(JPH_Body)*, const(JPH_Vec3)*, const(
            JPH_Vec3)*) OnAdjustBodyVelocity;
    bool function(void*, const(JPH_CharacterVirtual)*, const(JPH_BodyID), const(JPH_SubShapeID)) OnContactValidate;
    void function(void*, const(JPH_CharacterVirtual)*, const(JPH_BodyID), const(JPH_SubShapeID), const(
            JPH_RVec3)*, const(JPH_Vec3)*, JPH_CharacterContactSettings*) OnContactAdded;
    void function(void*, const(JPH_CharacterVirtual)*, const(JPH_BodyID), const(JPH_SubShapeID), const(JPH_RVec3)*, const(JPH_Vec3)*, const(
            JPH_Vec3)*, const(JPH_PhysicsMaterial)*, const(JPH_Vec3)*, JPH_Vec3*) OnContactSolve;
}

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
enum JPH_PhysicsUpdateError
{
    JPH_PhysicsUpdateError_None = 0,
    JPH_PhysicsUpdateError_ManifoldCacheFull = 1,
    JPH_PhysicsUpdateError_BodyPairCacheFull = 2,
    JPH_PhysicsUpdateError_ContactConstraintsFull = 4,
    _JPH_PhysicsUpdateError_Count = 5,
    _JPH_PhysicsUpdateError_Force32 = 2147483647,
}

enum JPH_PhysicsUpdateError_None = JPH_PhysicsUpdateError.JPH_PhysicsUpdateError_None;
enum JPH_PhysicsUpdateError_ManifoldCacheFull = JPH_PhysicsUpdateError
        .JPH_PhysicsUpdateError_ManifoldCacheFull;
enum JPH_PhysicsUpdateError_BodyPairCacheFull = JPH_PhysicsUpdateError
        .JPH_PhysicsUpdateError_BodyPairCacheFull;
enum JPH_PhysicsUpdateError_ContactConstraintsFull = JPH_PhysicsUpdateError
        .JPH_PhysicsUpdateError_ContactConstraintsFull;
enum _JPH_PhysicsUpdateError_Count = JPH_PhysicsUpdateError._JPH_PhysicsUpdateError_Count;
enum _JPH_PhysicsUpdateError_Force32 = JPH_PhysicsUpdateError._JPH_PhysicsUpdateError_Force32;
enum JPH_BodyType
{
    JPH_BodyType_Rigid = 0,
    JPH_BodyType_Soft = 1,
    _JPH_BodyType_Count = 2,
    _JPH_BodyType_Force32 = 2147483647,
}

enum JPH_BodyType_Rigid = JPH_BodyType.JPH_BodyType_Rigid;
enum JPH_BodyType_Soft = JPH_BodyType.JPH_BodyType_Soft;
enum _JPH_BodyType_Count = JPH_BodyType._JPH_BodyType_Count;
enum _JPH_BodyType_Force32 = JPH_BodyType._JPH_BodyType_Force32;
enum JPH_MotionType
{
    JPH_MotionType_Static = 0,
    JPH_MotionType_Kinematic = 1,
    JPH_MotionType_Dynamic = 2,
    _JPH_MotionType_Count = 3,
    _JPH_MotionType_Force32 = 2147483647,
}

enum JPH_MotionType_Static = JPH_MotionType.JPH_MotionType_Static;
enum JPH_MotionType_Kinematic = JPH_MotionType.JPH_MotionType_Kinematic;
enum JPH_MotionType_Dynamic = JPH_MotionType.JPH_MotionType_Dynamic;
enum _JPH_MotionType_Count = JPH_MotionType._JPH_MotionType_Count;
enum _JPH_MotionType_Force32 = JPH_MotionType._JPH_MotionType_Force32;
enum JPH_Activation
{
    JPH_Activation_Activate = 0,
    JPH_Activation_DontActivate = 1,
    _JPH_Activation_Count = 2,
    _JPH_Activation_Force32 = 2147483647,
}

enum JPH_Activation_Activate = JPH_Activation.JPH_Activation_Activate;
enum JPH_Activation_DontActivate = JPH_Activation.JPH_Activation_DontActivate;
enum _JPH_Activation_Count = JPH_Activation._JPH_Activation_Count;
enum _JPH_Activation_Force32 = JPH_Activation._JPH_Activation_Force32;
enum JPH_ValidateResult
{
    JPH_ValidateResult_AcceptAllContactsForThisBodyPair = 0,
    JPH_ValidateResult_AcceptContact = 1,
    JPH_ValidateResult_RejectContact = 2,
    JPH_ValidateResult_RejectAllContactsForThisBodyPair = 3,
    _JPH_ValidateResult_Count = 4,
    _JPH_ValidateResult_Force32 = 2147483647,
}

enum JPH_ValidateResult_AcceptAllContactsForThisBodyPair = JPH_ValidateResult
        .JPH_ValidateResult_AcceptAllContactsForThisBodyPair;
enum JPH_ValidateResult_AcceptContact = JPH_ValidateResult.JPH_ValidateResult_AcceptContact;
enum JPH_ValidateResult_RejectContact = JPH_ValidateResult.JPH_ValidateResult_RejectContact;
enum JPH_ValidateResult_RejectAllContactsForThisBodyPair = JPH_ValidateResult
        .JPH_ValidateResult_RejectAllContactsForThisBodyPair;
enum _JPH_ValidateResult_Count = JPH_ValidateResult._JPH_ValidateResult_Count;
enum _JPH_ValidateResult_Force32 = JPH_ValidateResult._JPH_ValidateResult_Force32;
enum JPH_ShapeType
{
    JPH_ShapeType_Convex = 0,
    JPH_ShapeType_Compound = 1,
    JPH_ShapeType_Decorated = 2,
    JPH_ShapeType_Mesh = 3,
    JPH_ShapeType_HeightField = 4,
    JPH_ShapeType_SoftBody = 5,
    JPH_ShapeType_User1 = 6,
    JPH_ShapeType_User2 = 7,
    JPH_ShapeType_User3 = 8,
    JPH_ShapeType_User4 = 9,
    _JPH_ShapeType_Count = 10,
    _JPH_ShapeType_Force32 = 2147483647,
}

enum JPH_ShapeType_Convex = JPH_ShapeType.JPH_ShapeType_Convex;
enum JPH_ShapeType_Compound = JPH_ShapeType.JPH_ShapeType_Compound;
enum JPH_ShapeType_Decorated = JPH_ShapeType.JPH_ShapeType_Decorated;
enum JPH_ShapeType_Mesh = JPH_ShapeType.JPH_ShapeType_Mesh;
enum JPH_ShapeType_HeightField = JPH_ShapeType.JPH_ShapeType_HeightField;
enum JPH_ShapeType_SoftBody = JPH_ShapeType.JPH_ShapeType_SoftBody;
enum JPH_ShapeType_User1 = JPH_ShapeType.JPH_ShapeType_User1;
enum JPH_ShapeType_User2 = JPH_ShapeType.JPH_ShapeType_User2;
enum JPH_ShapeType_User3 = JPH_ShapeType.JPH_ShapeType_User3;
enum JPH_ShapeType_User4 = JPH_ShapeType.JPH_ShapeType_User4;
enum _JPH_ShapeType_Count = JPH_ShapeType._JPH_ShapeType_Count;
enum _JPH_ShapeType_Force32 = JPH_ShapeType._JPH_ShapeType_Force32;
enum JPH_ShapeSubType
{
    JPH_ShapeSubType_Sphere = 0,
    JPH_ShapeSubType_Box = 1,
    JPH_ShapeSubType_Triangle = 2,
    JPH_ShapeSubType_Capsule = 3,
    JPH_ShapeSubType_TaperedCapsule = 4,
    JPH_ShapeSubType_Cylinder = 5,
    JPH_ShapeSubType_ConvexHull = 6,
    JPH_ShapeSubType_StaticCompound = 7,
    JPH_ShapeSubType_MutableCompound = 8,
    JPH_ShapeSubType_RotatedTranslated = 9,
    JPH_ShapeSubType_Scaled = 10,
    JPH_ShapeSubType_OffsetCenterOfMass = 11,
    JPH_ShapeSubType_Mesh = 12,
    JPH_ShapeSubType_HeightField = 13,
    JPH_ShapeSubType_SoftBody = 14,
    _JPH_ShapeSubType_Count = 15,
    _JPH_ShapeSubType_Force32 = 2147483647,
}

enum JPH_ShapeSubType_Sphere = JPH_ShapeSubType.JPH_ShapeSubType_Sphere;
enum JPH_ShapeSubType_Box = JPH_ShapeSubType.JPH_ShapeSubType_Box;
enum JPH_ShapeSubType_Triangle = JPH_ShapeSubType.JPH_ShapeSubType_Triangle;
enum JPH_ShapeSubType_Capsule = JPH_ShapeSubType.JPH_ShapeSubType_Capsule;
enum JPH_ShapeSubType_TaperedCapsule = JPH_ShapeSubType.JPH_ShapeSubType_TaperedCapsule;
enum JPH_ShapeSubType_Cylinder = JPH_ShapeSubType.JPH_ShapeSubType_Cylinder;
enum JPH_ShapeSubType_ConvexHull = JPH_ShapeSubType.JPH_ShapeSubType_ConvexHull;
enum JPH_ShapeSubType_StaticCompound = JPH_ShapeSubType.JPH_ShapeSubType_StaticCompound;
enum JPH_ShapeSubType_MutableCompound = JPH_ShapeSubType.JPH_ShapeSubType_MutableCompound;
enum JPH_ShapeSubType_RotatedTranslated = JPH_ShapeSubType.JPH_ShapeSubType_RotatedTranslated;
enum JPH_ShapeSubType_Scaled = JPH_ShapeSubType.JPH_ShapeSubType_Scaled;
enum JPH_ShapeSubType_OffsetCenterOfMass = JPH_ShapeSubType.JPH_ShapeSubType_OffsetCenterOfMass;
enum JPH_ShapeSubType_Mesh = JPH_ShapeSubType.JPH_ShapeSubType_Mesh;
enum JPH_ShapeSubType_HeightField = JPH_ShapeSubType.JPH_ShapeSubType_HeightField;
enum JPH_ShapeSubType_SoftBody = JPH_ShapeSubType.JPH_ShapeSubType_SoftBody;
enum _JPH_ShapeSubType_Count = JPH_ShapeSubType._JPH_ShapeSubType_Count;
enum _JPH_ShapeSubType_Force32 = JPH_ShapeSubType._JPH_ShapeSubType_Force32;
enum JPH_ConstraintType
{
    JPH_ConstraintType_Constraint = 0,
    JPH_ConstraintType_TwoBodyConstraint = 1,
    _JPH_ConstraintType_Count = 2,
    _JPH_ConstraintType_Force32 = 2147483647,
}

enum JPH_ConstraintType_Constraint = JPH_ConstraintType.JPH_ConstraintType_Constraint;
enum JPH_ConstraintType_TwoBodyConstraint = JPH_ConstraintType.JPH_ConstraintType_TwoBodyConstraint;
enum _JPH_ConstraintType_Count = JPH_ConstraintType._JPH_ConstraintType_Count;
enum _JPH_ConstraintType_Force32 = JPH_ConstraintType._JPH_ConstraintType_Force32;
enum JPH_ConstraintSubType
{
    JPH_ConstraintSubType_Fixed = 0,
    JPH_ConstraintSubType_Point = 1,
    JPH_ConstraintSubType_Hinge = 2,
    JPH_ConstraintSubType_Slider = 3,
    JPH_ConstraintSubType_Distance = 4,
    JPH_ConstraintSubType_Cone = 5,
    JPH_ConstraintSubType_SwingTwist = 6,
    JPH_ConstraintSubType_SixDOF = 7,
    JPH_ConstraintSubType_Path = 8,
    JPH_ConstraintSubType_Vehicle = 9,
    JPH_ConstraintSubType_RackAndPinion = 10,
    JPH_ConstraintSubType_Gear = 11,
    JPH_ConstraintSubType_Pulley = 12,
    JPH_ConstraintSubType_User1 = 13,
    JPH_ConstraintSubType_User2 = 14,
    JPH_ConstraintSubType_User3 = 15,
    JPH_ConstraintSubType_User4 = 16,
    _JPH_ConstraintSubType_Count = 17,
    _JPH_ConstraintSubType_Force32 = 2147483647,
}

enum JPH_ConstraintSubType_Fixed = JPH_ConstraintSubType.JPH_ConstraintSubType_Fixed;
enum JPH_ConstraintSubType_Point = JPH_ConstraintSubType.JPH_ConstraintSubType_Point;
enum JPH_ConstraintSubType_Hinge = JPH_ConstraintSubType.JPH_ConstraintSubType_Hinge;
enum JPH_ConstraintSubType_Slider = JPH_ConstraintSubType.JPH_ConstraintSubType_Slider;
enum JPH_ConstraintSubType_Distance = JPH_ConstraintSubType.JPH_ConstraintSubType_Distance;
enum JPH_ConstraintSubType_Cone = JPH_ConstraintSubType.JPH_ConstraintSubType_Cone;
enum JPH_ConstraintSubType_SwingTwist = JPH_ConstraintSubType.JPH_ConstraintSubType_SwingTwist;
enum JPH_ConstraintSubType_SixDOF = JPH_ConstraintSubType.JPH_ConstraintSubType_SixDOF;
enum JPH_ConstraintSubType_Path = JPH_ConstraintSubType.JPH_ConstraintSubType_Path;
enum JPH_ConstraintSubType_Vehicle = JPH_ConstraintSubType.JPH_ConstraintSubType_Vehicle;
enum JPH_ConstraintSubType_RackAndPinion = JPH_ConstraintSubType
        .JPH_ConstraintSubType_RackAndPinion;
enum JPH_ConstraintSubType_Gear = JPH_ConstraintSubType.JPH_ConstraintSubType_Gear;
enum JPH_ConstraintSubType_Pulley = JPH_ConstraintSubType.JPH_ConstraintSubType_Pulley;
enum JPH_ConstraintSubType_User1 = JPH_ConstraintSubType.JPH_ConstraintSubType_User1;
enum JPH_ConstraintSubType_User2 = JPH_ConstraintSubType.JPH_ConstraintSubType_User2;
enum JPH_ConstraintSubType_User3 = JPH_ConstraintSubType.JPH_ConstraintSubType_User3;
enum JPH_ConstraintSubType_User4 = JPH_ConstraintSubType.JPH_ConstraintSubType_User4;
enum _JPH_ConstraintSubType_Count = JPH_ConstraintSubType._JPH_ConstraintSubType_Count;
enum _JPH_ConstraintSubType_Force32 = JPH_ConstraintSubType._JPH_ConstraintSubType_Force32;
enum JPH_ConstraintSpace
{
    JPH_ConstraintSpace_LocalToBodyCOM = 0,
    JPH_ConstraintSpace_WorldSpace = 1,
    _JPH_ConstraintSpace_Count = 2,
    _JPH_ConstraintSpace_Force32 = 2147483647,
}

enum JPH_ConstraintSpace_LocalToBodyCOM = JPH_ConstraintSpace.JPH_ConstraintSpace_LocalToBodyCOM;
enum JPH_ConstraintSpace_WorldSpace = JPH_ConstraintSpace.JPH_ConstraintSpace_WorldSpace;
enum _JPH_ConstraintSpace_Count = JPH_ConstraintSpace._JPH_ConstraintSpace_Count;
enum _JPH_ConstraintSpace_Force32 = JPH_ConstraintSpace._JPH_ConstraintSpace_Force32;
enum JPH_MotionQuality
{
    JPH_MotionQuality_Discrete = 0,
    JPH_MotionQuality_LinearCast = 1,
    _JPH_MotionQuality_Count = 2,
    _JPH_MotionQuality_Force32 = 2147483647,
}

enum JPH_MotionQuality_Discrete = JPH_MotionQuality.JPH_MotionQuality_Discrete;
enum JPH_MotionQuality_LinearCast = JPH_MotionQuality.JPH_MotionQuality_LinearCast;
enum _JPH_MotionQuality_Count = JPH_MotionQuality._JPH_MotionQuality_Count;
enum _JPH_MotionQuality_Force32 = JPH_MotionQuality._JPH_MotionQuality_Force32;
enum JPH_OverrideMassProperties
{
    JPH_OverrideMassProperties_CalculateMassAndInertia = 0,
    JPH_OverrideMassProperties_CalculateInertia = 1,
    JPH_OverrideMassProperties_MassAndInertiaProvided = 2,
    _JPH_JPH_OverrideMassProperties_Count = 3,
    _JPH_JPH_OverrideMassProperties_Force32 = 2147483647,
}

enum JPH_OverrideMassProperties_CalculateMassAndInertia = JPH_OverrideMassProperties
        .JPH_OverrideMassProperties_CalculateMassAndInertia;
enum JPH_OverrideMassProperties_CalculateInertia = JPH_OverrideMassProperties
        .JPH_OverrideMassProperties_CalculateInertia;
enum JPH_OverrideMassProperties_MassAndInertiaProvided = JPH_OverrideMassProperties
        .JPH_OverrideMassProperties_MassAndInertiaProvided;
enum _JPH_JPH_OverrideMassProperties_Count = JPH_OverrideMassProperties
        ._JPH_JPH_OverrideMassProperties_Count;
enum _JPH_JPH_OverrideMassProperties_Force32 = JPH_OverrideMassProperties
        ._JPH_JPH_OverrideMassProperties_Force32;
enum JPH_AllowedDOFs
{
    JPH_AllowedDOFs_All = 63,
    JPH_AllowedDOFs_TranslationX = 1,
    JPH_AllowedDOFs_TranslationY = 2,
    JPH_AllowedDOFs_TranslationZ = 4,
    JPH_AllowedDOFs_RotationX = 8,
    JPH_AllowedDOFs_RotationY = 16,
    JPH_AllowedDOFs_RotationZ = 32,
    JPH_AllowedDOFs_Plane2D = 35,
    _JPH_AllowedDOFs_Count = 36,
    _JPH_AllowedDOFs_Force32 = 2147483647,
}

enum JPH_AllowedDOFs_All = JPH_AllowedDOFs.JPH_AllowedDOFs_All;
enum JPH_AllowedDOFs_TranslationX = JPH_AllowedDOFs.JPH_AllowedDOFs_TranslationX;
enum JPH_AllowedDOFs_TranslationY = JPH_AllowedDOFs.JPH_AllowedDOFs_TranslationY;
enum JPH_AllowedDOFs_TranslationZ = JPH_AllowedDOFs.JPH_AllowedDOFs_TranslationZ;
enum JPH_AllowedDOFs_RotationX = JPH_AllowedDOFs.JPH_AllowedDOFs_RotationX;
enum JPH_AllowedDOFs_RotationY = JPH_AllowedDOFs.JPH_AllowedDOFs_RotationY;
enum JPH_AllowedDOFs_RotationZ = JPH_AllowedDOFs.JPH_AllowedDOFs_RotationZ;
enum JPH_AllowedDOFs_Plane2D = JPH_AllowedDOFs.JPH_AllowedDOFs_Plane2D;
enum _JPH_AllowedDOFs_Count = JPH_AllowedDOFs._JPH_AllowedDOFs_Count;
enum _JPH_AllowedDOFs_Force32 = JPH_AllowedDOFs._JPH_AllowedDOFs_Force32;
enum JPH_GroundState
{
    JPH_GroundState_OnGround = 0,
    JPH_GroundState_OnSteepGround = 1,
    JPH_GroundState_NotSupported = 2,
    JPH_GroundState_InAir = 3,
    _JPH_GroundState_Count = 4,
    _JPH_GroundState_Force32 = 2147483647,
}

enum JPH_GroundState_OnGround = JPH_GroundState.JPH_GroundState_OnGround;
enum JPH_GroundState_OnSteepGround = JPH_GroundState.JPH_GroundState_OnSteepGround;
enum JPH_GroundState_NotSupported = JPH_GroundState.JPH_GroundState_NotSupported;
enum JPH_GroundState_InAir = JPH_GroundState.JPH_GroundState_InAir;
enum _JPH_GroundState_Count = JPH_GroundState._JPH_GroundState_Count;
enum _JPH_GroundState_Force32 = JPH_GroundState._JPH_GroundState_Force32;
enum JPH_BackFaceMode
{
    JPH_BackFaceMode_IgnoreBackFaces = 0,
    JPH_BackFaceMode_CollideWithBackFaces = 1,
    _JPH_BackFaceMode_Count = 2,
    _JPH_BackFaceMode_Force32 = 2147483647,
}

enum JPH_BackFaceMode_IgnoreBackFaces = JPH_BackFaceMode.JPH_BackFaceMode_IgnoreBackFaces;
enum JPH_BackFaceMode_CollideWithBackFaces = JPH_BackFaceMode.JPH_BackFaceMode_CollideWithBackFaces;
enum _JPH_BackFaceMode_Count = JPH_BackFaceMode._JPH_BackFaceMode_Count;
enum _JPH_BackFaceMode_Force32 = JPH_BackFaceMode._JPH_BackFaceMode_Force32;
enum JPH_ActiveEdgeMode
{
    JPH_ActiveEdgeMode_CollideOnlyWithActive = 0,
    JPH_ActiveEdgeMode_CollideWithAll = 1,
    _JPH_ActiveEdgeMode_Count = 2,
    _JPH_ActiveEdgeMode_Force32 = 2147483647,
}

enum JPH_ActiveEdgeMode_CollideOnlyWithActive = JPH_ActiveEdgeMode
        .JPH_ActiveEdgeMode_CollideOnlyWithActive;
enum JPH_ActiveEdgeMode_CollideWithAll = JPH_ActiveEdgeMode.JPH_ActiveEdgeMode_CollideWithAll;
enum _JPH_ActiveEdgeMode_Count = JPH_ActiveEdgeMode._JPH_ActiveEdgeMode_Count;
enum _JPH_ActiveEdgeMode_Force32 = JPH_ActiveEdgeMode._JPH_ActiveEdgeMode_Force32;
enum JPH_CollectFacesMode
{
    JPH_CollectFacesMode_CollectFaces = 0,
    JPH_CollectFacesMode_NoFaces = 1,
    _JPH_CollectFacesMode_Count = 2,
    _JPH_CollectFacesMode_Force32 = 2147483647,
}

enum JPH_CollectFacesMode_CollectFaces = JPH_CollectFacesMode.JPH_CollectFacesMode_CollectFaces;
enum JPH_CollectFacesMode_NoFaces = JPH_CollectFacesMode.JPH_CollectFacesMode_NoFaces;
enum _JPH_CollectFacesMode_Count = JPH_CollectFacesMode._JPH_CollectFacesMode_Count;
enum _JPH_CollectFacesMode_Force32 = JPH_CollectFacesMode._JPH_CollectFacesMode_Force32;
enum JPH_MotorState
{
    JPH_MotorState_Off = 0,
    JPH_MotorState_Velocity = 1,
    JPH_MotorState_Position = 2,
    _JPH_MotorState_Count = 3,
    _JPH_MotorState_Force32 = 2147483647,
}

enum JPH_MotorState_Off = JPH_MotorState.JPH_MotorState_Off;
enum JPH_MotorState_Velocity = JPH_MotorState.JPH_MotorState_Velocity;
enum JPH_MotorState_Position = JPH_MotorState.JPH_MotorState_Position;
enum _JPH_MotorState_Count = JPH_MotorState._JPH_MotorState_Count;
enum _JPH_MotorState_Force32 = JPH_MotorState._JPH_MotorState_Force32;
enum JPH_CollisionCollectorType
{
    JPH_CollisionCollectorType_AllHit = 0,
    JPH_CollisionCollectorType_AllHitSorted = 1,
    JPH_CollisionCollectorType_ClosestHit = 2,
    JPH_CollisionCollectorType_AnyHit = 3,
    _JPH_CollisionCollectorType_Count = 4,
    _JPH_CollisionCollectorType_Force32 = 2147483647,
}

enum JPH_CollisionCollectorType_AllHit = JPH_CollisionCollectorType
        .JPH_CollisionCollectorType_AllHit;
enum JPH_CollisionCollectorType_AllHitSorted = JPH_CollisionCollectorType
        .JPH_CollisionCollectorType_AllHitSorted;
enum JPH_CollisionCollectorType_ClosestHit = JPH_CollisionCollectorType
        .JPH_CollisionCollectorType_ClosestHit;
enum JPH_CollisionCollectorType_AnyHit = JPH_CollisionCollectorType
        .JPH_CollisionCollectorType_AnyHit;
enum _JPH_CollisionCollectorType_Count = JPH_CollisionCollectorType
        ._JPH_CollisionCollectorType_Count;
enum _JPH_CollisionCollectorType_Force32 = JPH_CollisionCollectorType
        ._JPH_CollisionCollectorType_Force32;
enum JPH_SixDOFConstraintAxis
{
    JPH_SixDOFConstraintAxis_TranslationX = 0,
    JPH_SixDOFConstraintAxis_TranslationY = 1,
    JPH_SixDOFConstraintAxis_TranslationZ = 2,
    JPH_SixDOFConstraintAxis_RotationX = 3,
    JPH_SixDOFConstraintAxis_RotationY = 4,
    JPH_SixDOFConstraintAxis_RotationZ = 5,
    _JPH_SixDOFConstraintAxis_Count = 6,
    _JPH_SixDOFConstraintAxis_Force32 = 2147483647,
}

enum JPH_SixDOFConstraintAxis_TranslationX = JPH_SixDOFConstraintAxis
        .JPH_SixDOFConstraintAxis_TranslationX;
enum JPH_SixDOFConstraintAxis_TranslationY = JPH_SixDOFConstraintAxis
        .JPH_SixDOFConstraintAxis_TranslationY;
enum JPH_SixDOFConstraintAxis_TranslationZ = JPH_SixDOFConstraintAxis
        .JPH_SixDOFConstraintAxis_TranslationZ;
enum JPH_SixDOFConstraintAxis_RotationX = JPH_SixDOFConstraintAxis
        .JPH_SixDOFConstraintAxis_RotationX;
enum JPH_SixDOFConstraintAxis_RotationY = JPH_SixDOFConstraintAxis
        .JPH_SixDOFConstraintAxis_RotationY;
enum JPH_SixDOFConstraintAxis_RotationZ = JPH_SixDOFConstraintAxis
        .JPH_SixDOFConstraintAxis_RotationZ;
enum _JPH_SixDOFConstraintAxis_Count = JPH_SixDOFConstraintAxis._JPH_SixDOFConstraintAxis_Count;
enum _JPH_SixDOFConstraintAxis_Force32 = JPH_SixDOFConstraintAxis._JPH_SixDOFConstraintAxis_Force32;
enum JPH_SpringMode
{
    JPH_SpringMode_FrequencyAndDamping = 0,
    JPH_SpringMode_StiffnessAndDamping = 1,
    _JPH_SpringMode_Count = 2,
    _JPH_SpringMode_Force32 = 2147483647,
}

enum JPH_SpringMode_FrequencyAndDamping = JPH_SpringMode.JPH_SpringMode_FrequencyAndDamping;
enum JPH_SpringMode_StiffnessAndDamping = JPH_SpringMode.JPH_SpringMode_StiffnessAndDamping;
enum _JPH_SpringMode_Count = JPH_SpringMode._JPH_SpringMode_Count;
enum _JPH_SpringMode_Force32 = JPH_SpringMode._JPH_SpringMode_Force32;
enum JPH_SoftBodyConstraintColor
{
    JPH_SoftBodyConstraintColor_ConstraintType = 0,
    JPH_SoftBodyConstraintColor_ConstraintGroup = 1,
    JPH_SoftBodyConstraintColor_ConstraintOrder = 2,
    _JPH_SoftBodyConstraintColor_Count = 3,
    _JPH_SoftBodyConstraintColor_Force32 = 2147483647,
}

enum JPH_SoftBodyConstraintColor_ConstraintType = JPH_SoftBodyConstraintColor
        .JPH_SoftBodyConstraintColor_ConstraintType;
enum JPH_SoftBodyConstraintColor_ConstraintGroup = JPH_SoftBodyConstraintColor
        .JPH_SoftBodyConstraintColor_ConstraintGroup;
enum JPH_SoftBodyConstraintColor_ConstraintOrder = JPH_SoftBodyConstraintColor
        .JPH_SoftBodyConstraintColor_ConstraintOrder;
enum _JPH_SoftBodyConstraintColor_Count = JPH_SoftBodyConstraintColor
        ._JPH_SoftBodyConstraintColor_Count;
enum _JPH_SoftBodyConstraintColor_Force32 = JPH_SoftBodyConstraintColor
        ._JPH_SoftBodyConstraintColor_Force32;
enum JPH_BodyManager_ShapeColor
{
    JPH_BodyManager_ShapeColor_InstanceColor = 0,
    JPH_BodyManager_ShapeColor_ShapeTypeColor = 1,
    JPH_BodyManager_ShapeColor_MotionTypeColor = 2,
    JPH_BodyManager_ShapeColor_SleepColor = 3,
    JPH_BodyManager_ShapeColor_IslandColor = 4,
    JPH_BodyManager_ShapeColor_MaterialColor = 5,
    _JPH_BodyManager_ShapeColor_Count = 6,
    _JPH_BodyManager_ShapeColor_Force32 = 2147483647,
}

enum JPH_BodyManager_ShapeColor_InstanceColor = JPH_BodyManager_ShapeColor
        .JPH_BodyManager_ShapeColor_InstanceColor;
enum JPH_BodyManager_ShapeColor_ShapeTypeColor = JPH_BodyManager_ShapeColor
        .JPH_BodyManager_ShapeColor_ShapeTypeColor;
enum JPH_BodyManager_ShapeColor_MotionTypeColor = JPH_BodyManager_ShapeColor
        .JPH_BodyManager_ShapeColor_MotionTypeColor;
enum JPH_BodyManager_ShapeColor_SleepColor = JPH_BodyManager_ShapeColor
        .JPH_BodyManager_ShapeColor_SleepColor;
enum JPH_BodyManager_ShapeColor_IslandColor = JPH_BodyManager_ShapeColor
        .JPH_BodyManager_ShapeColor_IslandColor;
enum JPH_BodyManager_ShapeColor_MaterialColor = JPH_BodyManager_ShapeColor
        .JPH_BodyManager_ShapeColor_MaterialColor;
enum _JPH_BodyManager_ShapeColor_Count = JPH_BodyManager_ShapeColor
        ._JPH_BodyManager_ShapeColor_Count;
enum _JPH_BodyManager_ShapeColor_Force32 = JPH_BodyManager_ShapeColor
        ._JPH_BodyManager_ShapeColor_Force32;
enum JPH_DebugRenderer_CastShadow
{
    JPH_DebugRenderer_CastShadow_On = 0,
    JPH_DebugRenderer_CastShadow_Off = 1,
    _JPH_DebugRenderer_CastShadow_Count = 2,
    _JPH_DebugRenderer_CastShadow_Force32 = 2147483647,
}

enum JPH_DebugRenderer_CastShadow_On = JPH_DebugRenderer_CastShadow.JPH_DebugRenderer_CastShadow_On;
enum JPH_DebugRenderer_CastShadow_Off = JPH_DebugRenderer_CastShadow
        .JPH_DebugRenderer_CastShadow_Off;
enum _JPH_DebugRenderer_CastShadow_Count = JPH_DebugRenderer_CastShadow
        ._JPH_DebugRenderer_CastShadow_Count;
enum _JPH_DebugRenderer_CastShadow_Force32 = JPH_DebugRenderer_CastShadow
        ._JPH_DebugRenderer_CastShadow_Force32;
enum JPH_DebugRenderer_DrawMode
{
    JPH_DebugRenderer_DrawMode_Solid = 0,
    JPH_DebugRenderer_DrawMode_Wireframe = 1,
    _JPH_DebugRenderer_JPH_DebugRenderer_DrawMode_Count = 2,
    _JPH_DebugRenderer_JPH_DebugRenderer_DrawMode_Force32 = 2147483647,
}

enum JPH_DebugRenderer_DrawMode_Solid = JPH_DebugRenderer_DrawMode.JPH_DebugRenderer_DrawMode_Solid;
enum JPH_DebugRenderer_DrawMode_Wireframe = JPH_DebugRenderer_DrawMode
        .JPH_DebugRenderer_DrawMode_Wireframe;
enum _JPH_DebugRenderer_JPH_DebugRenderer_DrawMode_Count = JPH_DebugRenderer_DrawMode
        ._JPH_DebugRenderer_JPH_DebugRenderer_DrawMode_Count;
enum _JPH_DebugRenderer_JPH_DebugRenderer_DrawMode_Force32 = JPH_DebugRenderer_DrawMode
        ._JPH_DebugRenderer_JPH_DebugRenderer_DrawMode_Force32;
struct JPH_Vec3
{
    float x;
    float y;
    float z;
}

struct JPH_Vec4
{
    float x;
    float y;
    float z;
    float w;
}

struct JPH_Quat
{
    float x;
    float y;
    float z;
    float w;
}

struct JPH_Plane
{
    JPH_Vec3 normal;
    float distance;
}

struct JPH_Matrix4x4
{
    float m11;
    float m12;
    float m13;
    float m14;
    float m21;
    float m22;
    float m23;
    float m24;
    float m31;
    float m32;
    float m33;
    float m34;
    float m41;
    float m42;
    float m43;
    float m44;
}

alias JPH_RVec3 = JPH_Vec3;
alias JPH_RMatrix4x4 = JPH_Matrix4x4;
alias JPH_Color = uint32_t;
struct JPH_AABox
{
    JPH_Vec3 min;
    JPH_Vec3 max;
}

struct JPH_Triangle
{
    JPH_Vec3 v1;
    JPH_Vec3 v2;
    JPH_Vec3 v3;
    uint32_t materialIndex;
}

struct JPH_IndexedTriangleNoMaterial
{
    uint32_t i1;
    uint32_t i2;
    uint32_t i3;
}

struct JPH_IndexedTriangle
{
    uint32_t i1;
    uint32_t i2;
    uint32_t i3;
    uint32_t materialIndex;
    uint32_t userData;
}

struct JPH_MassProperties
{
    float mass;
    JPH_Matrix4x4 inertia;
}

struct JPH_CollideSettingsBase
{
    JPH_ActiveEdgeMode activeEdgeMode;
    JPH_CollectFacesMode collectFacesMode;
    float collisionTolerance;
    float penetrationTolerance;
    JPH_Vec3 activeEdgeMovementDirection;
}

struct JPH_CollideShapeSettings
{
    JPH_CollideSettingsBase base;
    float maxSeparationDistance;
    JPH_BackFaceMode backFaceMode;
}

struct JPH_ShapeCastSettings
{
    JPH_CollideSettingsBase base;
    JPH_BackFaceMode backFaceModeTriangles;
    JPH_BackFaceMode backFaceModeConvex;
    bool useShrunkenShapeAndConvexRadius;
    bool returnDeepestPoint;
}

struct JPH_RayCastSettings
{
    JPH_BackFaceMode backFaceModeTriangles;
    JPH_BackFaceMode backFaceModeConvex;
    bool treatConvexAsSolid;
}

struct JPH_SpringSettings
{
    JPH_SpringMode mode;
    float frequencyOrStiffness;
    float damping;
}

struct JPH_MotorSettings
{
    JPH_SpringSettings springSettings;
    float minForceLimit;
    float maxForceLimit;
    float minTorqueLimit;
    float maxTorqueLimit;
}

struct JPH_SubShapeIDPair
{
    JPH_BodyID Body1ID;
    JPH_SubShapeID subShapeID1;
    JPH_BodyID Body2ID;
    JPH_SubShapeID subShapeID2;
}

struct JPH_BroadPhaseCastResult
{
    JPH_BodyID bodyID;
    float fraction;
}

struct JPH_RayCastResult
{
    JPH_BodyID bodyID;
    float fraction;
    JPH_SubShapeID subShapeID2;
}

struct JPH_CollidePointResult
{
    JPH_BodyID bodyID;
    JPH_SubShapeID subShapeID2;
}

struct JPH_CollideShapeResult
{
    JPH_Vec3 contactPointOn1;
    JPH_Vec3 contactPointOn2;
    JPH_Vec3 penetrationAxis;
    float penetrationDepth;
    JPH_SubShapeID subShapeID1;
    JPH_SubShapeID subShapeID2;
    JPH_BodyID bodyID2;
}

struct JPH_ShapeCastResult
{
    JPH_Vec3 contactPointOn1;
    JPH_Vec3 contactPointOn2;
    JPH_Vec3 penetrationAxis;
    float penetrationDepth;
    JPH_SubShapeID subShapeID1;
    JPH_SubShapeID subShapeID2;
    JPH_BodyID bodyID2;
    float fraction;
    bool isBackFaceHit;
}

struct JPH_DrawSettings
{
    bool drawGetSupportFunction;
    bool drawSupportDirection;
    bool drawGetSupportingFace;
    bool drawShape;
    bool drawShapeWireframe;
    JPH_BodyManager_ShapeColor drawShapeColor;
    bool drawBoundingBox;
    bool drawCenterOfMassTransform;
    bool drawWorldTransform;
    bool drawVelocity;
    bool drawMassAndInertia;
    bool drawSleepStats;
    bool drawSoftBodyVertices;
    bool drawSoftBodyVertexVelocities;
    bool drawSoftBodyEdgeConstraints;
    bool drawSoftBodyBendConstraints;
    bool drawSoftBodyVolumeConstraints;
    bool drawSoftBodySkinConstraints;
    bool drawSoftBodyLRAConstraints;
    bool drawSoftBodyPredictedBounds;
    JPH_SoftBodyConstraintColor drawSoftBodyConstraintColor;
}

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
struct JPH_BroadPhaseLayerInterface;
struct JPH_ObjectVsBroadPhaseLayerFilter;
struct JPH_ObjectLayerPairFilter;
struct JPH_BroadPhaseLayerFilter;
struct JPH_ObjectLayerFilter;
struct JPH_BodyFilter;
struct JPH_ShapeFilter;
struct JPH_PhysicsSystem;
struct JPH_PhysicsMaterial;
struct JPH_ShapeSettings;
struct JPH_ConvexShapeSettings;
struct JPH_SphereShapeSettings;
struct JPH_BoxShapeSettings;
struct JPH_PlaneShapeSettings;
struct JPH_TriangleShapeSettings;
struct JPH_CapsuleShapeSettings;
struct JPH_TaperedCapsuleShapeSettings;
struct JPH_CylinderShapeSettings;
struct JPH_TaperedCylinderShapeSettings;
struct JPH_ConvexHullShapeSettings;
struct JPH_CompoundShapeSettings;
struct JPH_StaticCompoundShapeSettings;
struct JPH_MutableCompoundShapeSettings;
struct JPH_MeshShapeSettings;
struct JPH_HeightFieldShapeSettings;
struct JPH_RotatedTranslatedShapeSettings;
struct JPH_ScaledShapeSettings;
struct JPH_OffsetCenterOfMassShapeSettings;
struct JPH_EmptyShapeSettings;
struct JPH_Shape;
struct JPH_ConvexShape;
struct JPH_SphereShape;
struct JPH_BoxShape;
struct JPH_PlaneShape;
struct JPH_CapsuleShape;
struct JPH_CylinderShape;
struct JPH_TaperedCylinderShape;
struct JPH_TriangleShape;
struct JPH_TaperedCapsuleShape;
struct JPH_ConvexHullShape;
struct JPH_CompoundShape;
struct JPH_StaticCompoundShape;
struct JPH_MutableCompoundShape;
struct JPH_MeshShape;
struct JPH_HeightFieldShape;
struct JPH_DecoratedShape;
struct JPH_RotatedTranslatedShape;
struct JPH_ScaledShape;
struct JPH_OffsetCenterOfMassShape;
struct JPH_EmptyShape;
struct JPH_BodyCreationSettings;
struct JPH_SoftBodyCreationSettings;
struct JPH_BodyInterface;
struct JPH_BodyLockInterface;
struct JPH_BroadPhaseQuery;
struct JPH_NarrowPhaseQuery;
struct JPH_MotionProperties;
struct JPH_Body;
struct JPH_ConstraintSettings;
struct JPH_FixedConstraintSettings;
struct JPH_TwoBodyConstraintSettings;
struct JPH_DistanceConstraintSettings;
struct JPH_HingeConstraintSettings;
struct JPH_SliderConstraintSettings;
struct JPH_PointConstraintSettings;
struct JPH_ConeConstraintSettings;
struct JPH_SwingTwistConstraintSettings;
struct JPH_SixDOFConstraintSettings;
struct JPH_Constraint;
struct JPH_TwoBodyConstraint;
struct JPH_FixedConstraint;
struct JPH_DistanceConstraint;
struct JPH_PointConstraint;
struct JPH_HingeConstraint;
struct JPH_SliderConstraint;
struct JPH_ConeConstraint;
struct JPH_SwingTwistConstraint;
struct JPH_SixDOFConstraint;
struct JPH_ContactListener;
struct JPH_ContactManifold;
struct JPH_ContactSettings;
struct JPH_BodyActivationListener;
struct JPH_BodyDrawFilter;
struct JPH_SharedMutex;
struct JPH_DebugRenderer;
struct JPH_BodyLockRead
{
    const(JPH_BodyLockInterface)* lockInterface;
    JPH_SharedMutex* mutex;
    const(JPH_Body)* body_;
}

struct JPH_BodyLockWrite
{
    const(JPH_BodyLockInterface)* lockInterface;
    JPH_SharedMutex* mutex;
    JPH_Body* body_;
}

struct JPH_ExtendedUpdateSettings
{
    JPH_Vec3 stickToFloorStepDown;
    JPH_Vec3 walkStairsStepUp;
    float walkStairsMinStepForward;
    float walkStairsStepForwardTest;
    float walkStairsCosAngleForwardContact;
    JPH_Vec3 walkStairsStepDownExtra;
}

struct JPH_CharacterBaseSettings
{
    JPH_Vec3 up;
    JPH_Plane supportingVolume;
    float maxSlopeAngle;
    bool enhancedInternalEdgeRemoval;
    const(JPH_Shape)* shape;
}

struct JPH_CharacterBase;
struct JPH_CharacterSettings
{
    JPH_CharacterBaseSettings base;
    JPH_ObjectLayer layer;
    float mass;
    float friction;
    float gravityFactor;
}

struct JPH_Character;
struct JPH_CharacterVirtualSettings
{
    JPH_CharacterBaseSettings base;
    float mass;
    float maxStrength;
    JPH_Vec3 shapeOffset;
    JPH_BackFaceMode backFaceMode;
    float predictiveContactDistance;
    uint32_t maxCollisionIterations;
    uint32_t maxConstraintIterations;
    float minTimeRemaining;
    float collisionTolerance;
    float characterPadding;
    uint32_t maxNumHits;
    float hitReductionCosMaxAngle;
    float penetrationRecoverySpeed;
    const(JPH_Shape)* innerBodyShape;
    JPH_ObjectLayer innerBodyLayer;
}

struct JPH_CharacterContactSettings
{
    bool canPushCharacter;
    bool canReceiveImpulses;
}

struct JPH_CharacterContactListener;
struct JPH_CharacterVirtual;
alias JPH_TraceFunc = void function(const(char)*);
alias JPH_AssertFailureFunc = bool function(const(char)*, const(char)*, const(char)*, uint);
alias JPH_JobFunction = void function(void*);
alias JPH_QueueJobCallback = void function(void*, void function(void*), void*);
alias JPH_QueueJobsCallback = void function(void*, void function(void*), void**, uint);
struct JobSystemThreadPoolConfig
{
    uint32_t maxJobs;
    uint32_t maxBarriers;
    int32_t numThreads;
}

struct JPH_JobSystemConfig
{
    void* context;
    JPH_QueueJobCallback queueJob;
    JPH_QueueJobsCallback queueJobs;
    uint32_t maxConcurrency;
    uint32_t maxBarriers;
}

struct JPH_JobSystem;
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
struct JPH_PhysicsSystemSettings
{
    uint32_t maxBodies;
    uint32_t numBodyMutexes;
    uint32_t maxBodyPairs;
    uint32_t maxContactConstraints;
    uint32_t _padding;
    JPH_BroadPhaseLayerInterface* broadPhaseLayerInterface;
    JPH_ObjectLayerPairFilter* objectLayerPairFilter;
    JPH_ObjectVsBroadPhaseLayerFilter* objectVsBroadPhaseLayerFilter;
}

struct JPH_PhysicsSettings
{
    int maxInFlightBodyPairs;
    int stepListenersBatchSize;
    int stepListenerBatchesPerJob;
    float baumgarte;
    float speculativeContactDistance;
    float penetrationSlop;
    float linearCastThreshold;
    float linearCastMaxPenetration;
    float manifoldToleranceSq;
    float maxPenetrationDistance;
    float bodyPairCacheMaxDeltaPositionSq;
    float bodyPairCacheCosMaxDeltaRotationDiv2;
    float contactNormalCosMaxDeltaRotation;
    float contactPointPreserveLambdaMaxDistSq;
    uint32_t numVelocitySteps;
    uint32_t numPositionSteps;
    float minVelocityForRestitution;
    float timeBeforeSleep;
    float pointVelocitySleepThreshold;
    bool deterministicSimulation;
    bool constraintWarmStart;
    bool useBodyPairContactCache;
    bool useManifoldReduction;
    bool useLargeIslandSplitter;
    bool allowSleeping;
    bool checkActiveEdges;
}

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
struct JPH_BroadPhaseLayerFilter_Procs
{
    bool function(void*, JPH_BroadPhaseLayer) ShouldCollide;
}

alias JPH_BroadPhaseLayerFilter_Create  = JPH_BroadPhaseLayerFilter* function(JPH_BroadPhaseLayerFilter_Procs, void*) @nogc nothrow;
alias JPH_BroadPhaseLayerFilter_Destroy = void function(JPH_BroadPhaseLayerFilter*);
struct JPH_ObjectLayerFilter_Procs
{
    bool function(void*, JPH_ObjectLayer) ShouldCollide;
}

alias JPH_ObjectLayerFilter_Create  = JPH_ObjectLayerFilter* function(JPH_ObjectLayerFilter_Procs, void*) @nogc nothrow;
alias JPH_ObjectLayerFilter_Destroy = void function(JPH_ObjectLayerFilter*);
struct JPH_BodyFilter_Procs
{
    bool function(void*, JPH_BodyID) ShouldCollide;
    bool function(void*, const(JPH_Body)*) ShouldCollideLocked;
}

alias JPH_BodyFilter_Create  = JPH_BodyFilter* function(JPH_BodyFilter_Procs, void*) @nogc nothrow;
alias JPH_BodyFilter_Destroy = void function(JPH_BodyFilter*);
struct JPH_ShapeFilter_Procs
{
    bool function(void*, const(JPH_Shape)*, const(JPH_SubShapeID)*) ShouldCollide;
    bool function(void*, const(JPH_Shape)*, const(JPH_SubShapeID)*, const(JPH_Shape)*, const(
            JPH_SubShapeID)*) ShouldCollide2;
}

alias JPH_ShapeFilter_Create  = JPH_ShapeFilter* function(JPH_ShapeFilter_Procs, void*) @nogc nothrow;
alias JPH_ShapeFilter_Destroy = void function(JPH_ShapeFilter*);
alias JPH_ShapeFilter_GetBodyID2 = JPH_BodyID function(JPH_ShapeFilter*);
alias JPH_ShapeFilter_SetBodyID2 = void function(JPH_ShapeFilter*, JPH_BodyID);
struct JPH_ContactListener_Procs
{
    JPH_ValidateResult function(void*, const(JPH_Body)*, const(JPH_Body)*, const(JPH_RVec3)*, const(
            JPH_CollideShapeResult)*) OnContactValidate;
    void function(void*, const(JPH_Body)*, const(JPH_Body)*, const(JPH_ContactManifold)*, JPH_ContactSettings*) OnContactAdded;
    void function(void*, const(JPH_Body)*, const(JPH_Body)*, const(JPH_ContactManifold)*, JPH_ContactSettings*) OnContactPersisted;
    void function(void*, const(JPH_SubShapeIDPair)*) OnContactRemoved;
}

alias JPH_ContactListener_Create  = JPH_ContactListener* function(JPH_ContactListener_Procs, void*) @nogc nothrow;
alias JPH_ContactListener_Destroy = void function(JPH_ContactListener*);
struct JPH_BodyActivationListener_Procs
{
    void function(void*, JPH_BodyID, uint64_t) OnBodyActivated;
    void function(void*, JPH_BodyID, uint64_t) OnBodyDeactivated;
}

alias JPH_BodyActivationListener_Create  = JPH_BodyActivationListener* function(
    JPH_BodyActivationListener_Procs, void*) @nogc nothrow;
alias JPH_BodyActivationListener_Destroy = void function(JPH_BodyActivationListener*);
struct JPH_BodyDrawFilter_Procs
{
    bool function(void*, const(JPH_Body)*) ShouldDraw;
}

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

static if (!is(typeof(JPH_MAX_PHYSICS_BARRIERS)))
{
    private enum enumMixinStr_JPH_MAX_PHYSICS_BARRIERS = `enum JPH_MAX_PHYSICS_BARRIERS = ( 2048 );`;
    static if (is(typeof({ mixin(enumMixinStr_JPH_MAX_PHYSICS_BARRIERS); })))
    {
        mixin(enumMixinStr_JPH_MAX_PHYSICS_BARRIERS);
    }
}

static if (!is(typeof(JPH_MAX_PHYSICS_JOBS)))
{
    private enum enumMixinStr_JPH_MAX_PHYSICS_JOBS = `enum JPH_MAX_PHYSICS_JOBS = ( 2048 );`;
    static if (is(typeof({ mixin(enumMixinStr_JPH_MAX_PHYSICS_JOBS); })))
    {
        mixin(enumMixinStr_JPH_MAX_PHYSICS_JOBS);
    }
}

static if (!is(typeof(JPH_CAPSULE_PROJECTION_SLOP)))
{
    private enum enumMixinStr_JPH_CAPSULE_PROJECTION_SLOP = `enum JPH_CAPSULE_PROJECTION_SLOP = ( 0.02f );`;
    static if (is(typeof({ mixin(enumMixinStr_JPH_CAPSULE_PROJECTION_SLOP); })))
    {
        mixin(enumMixinStr_JPH_CAPSULE_PROJECTION_SLOP);
    }
}

static if (!is(typeof(JPH_DEFAULT_CONVEX_RADIUS)))
{
    private enum enumMixinStr_JPH_DEFAULT_CONVEX_RADIUS = `enum JPH_DEFAULT_CONVEX_RADIUS = ( 0.05f );`;
    static if (is(typeof({ mixin(enumMixinStr_JPH_DEFAULT_CONVEX_RADIUS); })))
    {
        mixin(enumMixinStr_JPH_DEFAULT_CONVEX_RADIUS);
    }
}

static if (!is(typeof(JPH_DEFAULT_PENETRATION_TOLERANCE)))
{
    private enum enumMixinStr_JPH_DEFAULT_PENETRATION_TOLERANCE = `enum JPH_DEFAULT_PENETRATION_TOLERANCE = ( 1.0e-4f );`;
    static if (is(typeof({
                mixin(enumMixinStr_JPH_DEFAULT_PENETRATION_TOLERANCE);
            })))
    {
        mixin(enumMixinStr_JPH_DEFAULT_PENETRATION_TOLERANCE);
    }
}

static if (!is(typeof(JPH_DEFAULT_COLLISION_TOLERANCE)))
{
    private enum enumMixinStr_JPH_DEFAULT_COLLISION_TOLERANCE = `enum JPH_DEFAULT_COLLISION_TOLERANCE = ( 1.0e-4f );`;
    static if (is(typeof({ mixin(enumMixinStr_JPH_DEFAULT_COLLISION_TOLERANCE); })))
    {
        mixin(enumMixinStr_JPH_DEFAULT_COLLISION_TOLERANCE);
    }
}

static if (!is(typeof(JPH_CAPI)))
{
    private enum enumMixinStr_JPH_CAPI = `enum JPH_CAPI = _JPH_EXTERN _JPH_EXPORT;`;
    static if (is(typeof({ mixin(enumMixinStr_JPH_CAPI); })))
    {
        mixin(enumMixinStr_JPH_CAPI);
    }
}

static if (!is(typeof(JPH_API_CALL)))
{
    private enum enumMixinStr_JPH_API_CALL = `enum JPH_API_CALL = __cdecl;`;
    static if (is(typeof({ mixin(enumMixinStr_JPH_API_CALL); })))
    {
        mixin(enumMixinStr_JPH_API_CALL);
    }
}

static if (!is(typeof(_JPH_EXTERN)))
{
    private enum enumMixinStr__JPH_EXTERN = `enum _JPH_EXTERN = extern;`;
    static if (is(typeof({ mixin(enumMixinStr__JPH_EXTERN); })))
    {
        mixin(enumMixinStr__JPH_EXTERN);
    }
}

static if (!is(typeof(JOLT_C_H_)))
{
    private enum enumMixinStr_JOLT_C_H_ = `enum JOLT_C_H_ = 1;`;
    static if (is(typeof({ mixin(enumMixinStr_JOLT_C_H_); })))
    {
        mixin(enumMixinStr_JOLT_C_H_);
    }
}

static if (!is(typeof(NULL)))
{
    private enum enumMixinStr_NULL = `enum NULL = ( cast( void * ) 0 );`;
    static if (is(typeof({ mixin(enumMixinStr_NULL); })))
    {
        mixin(enumMixinStr_NULL);
    }
}
static if (!is(typeof(__bool_true_false_are_defined)))
{
    private enum enumMixinStr___bool_true_false_are_defined = `enum __bool_true_false_are_defined = 1;`;
    static if (is(typeof({ mixin(enumMixinStr___bool_true_false_are_defined); })))
    {
        mixin(enumMixinStr___bool_true_false_are_defined);
    }
}

static if (!is(typeof(bool_)))
{
    private enum enumMixinStr_bool_ = `enum bool_ = _Bool;`;
    static if (is(typeof({ mixin(enumMixinStr_bool_); })))
    {
        mixin(enumMixinStr_bool_);
    }
}

static if (!is(typeof(true_)))
{
    private enum enumMixinStr_true_ = `enum true_ = 1;`;
    static if (is(typeof({ mixin(enumMixinStr_true_); })))
    {
        mixin(enumMixinStr_true_);
    }
}

static if (!is(typeof(false_)))
{
    private enum enumMixinStr_false_ = `enum false_ = 0;`;
    static if (is(typeof({ mixin(enumMixinStr_false_); })))
    {
        mixin(enumMixinStr_false_);
    }
}
static if (!is(typeof(_Benign_race_begin_)))
{
    private enum enumMixinStr__Benign_race_begin_ = `enum _Benign_race_begin_ =
                                                                                                                 ;`;
    static if (is(typeof({ mixin(enumMixinStr__Benign_race_begin_); })))
    {
        mixin(enumMixinStr__Benign_race_begin_);
    }
}

static if (!is(typeof(_Benign_race_end_)))
{
    private enum enumMixinStr__Benign_race_end_ = `enum _Benign_race_end_ =
                                                                                                            ;`;
    static if (is(typeof({ mixin(enumMixinStr__Benign_race_end_); })))
    {
        mixin(enumMixinStr__Benign_race_end_);
    }
}

static if (!is(typeof(_No_competing_thread_begin_)))
{
    private enum enumMixinStr__No_competing_thread_begin_ = `enum _No_competing_thread_begin_ =
                                                                                                                                 ;`;
    static if (is(typeof({ mixin(enumMixinStr__No_competing_thread_begin_); })))
    {
        mixin(enumMixinStr__No_competing_thread_begin_);
    }
}

static if (!is(typeof(_No_competing_thread_end_)))
{
    private enum enumMixinStr__No_competing_thread_end_ = `enum _No_competing_thread_end_ =
                                                                                                                            ;`;
    static if (is(typeof({ mixin(enumMixinStr__No_competing_thread_end_); })))
    {
        mixin(enumMixinStr__No_competing_thread_end_);
    }
}
static if (!is(typeof(BENIGN_RACE_BEGIN)))
{
    private enum enumMixinStr_BENIGN_RACE_BEGIN = `enum BENIGN_RACE_BEGIN =
                                                                                                             ;`;
    static if (is(typeof({ mixin(enumMixinStr_BENIGN_RACE_BEGIN); })))
    {
        mixin(enumMixinStr_BENIGN_RACE_BEGIN);
    }
}

static if (!is(typeof(BENIGN_RACE_END)))
{
    private enum enumMixinStr_BENIGN_RACE_END = `enum BENIGN_RACE_END =
                                                                                                        ;`;
    static if (is(typeof({ mixin(enumMixinStr_BENIGN_RACE_END); })))
    {
        mixin(enumMixinStr_BENIGN_RACE_END);
    }
}

static if (!is(typeof(NO_COMPETING_THREAD_BEGIN)))
{
    private enum enumMixinStr_NO_COMPETING_THREAD_BEGIN = `enum NO_COMPETING_THREAD_BEGIN =
                                                                                                                             ;`;
    static if (is(typeof({ mixin(enumMixinStr_NO_COMPETING_THREAD_BEGIN); })))
    {
        mixin(enumMixinStr_NO_COMPETING_THREAD_BEGIN);
    }
}

static if (!is(typeof(NO_COMPETING_THREAD_END)))
{
    private enum enumMixinStr_NO_COMPETING_THREAD_END = `enum NO_COMPETING_THREAD_END =
                                                                                                                        ;`;
    static if (is(typeof({ mixin(enumMixinStr_NO_COMPETING_THREAD_END); })))
    {
        mixin(enumMixinStr_NO_COMPETING_THREAD_END);
    }
}

static if (!is(typeof(_SAL_VERSION)))
{
    private enum enumMixinStr__SAL_VERSION = `enum _SAL_VERSION = 20;`;
    static if (is(typeof({ mixin(enumMixinStr__SAL_VERSION); })))
    {
        mixin(enumMixinStr__SAL_VERSION);
    }
}

static if (!is(typeof(__SAL_H_VERSION)))
{
    private enum enumMixinStr___SAL_H_VERSION = `enum __SAL_H_VERSION = 180000000;`;
    static if (is(typeof({ mixin(enumMixinStr___SAL_H_VERSION); })))
    {
        mixin(enumMixinStr___SAL_H_VERSION);
    }
}

static if (!is(typeof(_USE_DECLSPECS_FOR_SAL)))
{
    private enum enumMixinStr__USE_DECLSPECS_FOR_SAL = `enum _USE_DECLSPECS_FOR_SAL = 0;`;
    static if (is(typeof({ mixin(enumMixinStr__USE_DECLSPECS_FOR_SAL); })))
    {
        mixin(enumMixinStr__USE_DECLSPECS_FOR_SAL);
    }
}

static if (!is(typeof(_USE_ATTRIBUTES_FOR_SAL)))
{
    private enum enumMixinStr__USE_ATTRIBUTES_FOR_SAL = `enum _USE_ATTRIBUTES_FOR_SAL = 0;`;
    static if (is(typeof({ mixin(enumMixinStr__USE_ATTRIBUTES_FOR_SAL); })))
    {
        mixin(enumMixinStr__USE_ATTRIBUTES_FOR_SAL);
    }
}
static if (!is(typeof(_Use_decl_annotations_)))
{
    private enum enumMixinStr__Use_decl_annotations_ = `enum _Use_decl_annotations_ = _Use_decl_anno_impl_;`;
    static if (is(typeof({ mixin(enumMixinStr__Use_decl_annotations_); })))
    {
        mixin(enumMixinStr__Use_decl_annotations_);
    }
}

static if (!is(typeof(_Notref_)))
{
    private enum enumMixinStr__Notref_ = `enum _Notref_ = _Notref_impl_;`;
    static if (is(typeof({ mixin(enumMixinStr__Notref_); })))
    {
        mixin(enumMixinStr__Notref_);
    }
}

static if (!is(typeof(_Pre_defensive_)))
{
    private enum enumMixinStr__Pre_defensive_ = `enum _Pre_defensive_ = _SA_annotes0 ( SAL_pre_defensive );`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_defensive_); })))
    {
        mixin(enumMixinStr__Pre_defensive_);
    }
}

static if (!is(typeof(_Post_defensive_)))
{
    private enum enumMixinStr__Post_defensive_ = `enum _Post_defensive_ = _SA_annotes0 ( SAL_post_defensive );`;
    static if (is(typeof({ mixin(enumMixinStr__Post_defensive_); })))
    {
        mixin(enumMixinStr__Post_defensive_);
    }
}
static if (!is(typeof(_Reserved_)))
{
    private enum enumMixinStr__Reserved_ = `enum _Reserved_ = _SA_annotes3 ( SAL_name , "_Reserved_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __null_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Reserved_); })))
    {
        mixin(enumMixinStr__Reserved_);
    }
}

static if (!is(typeof(_Const_)))
{
    private enum enumMixinStr__Const_ = `enum _Const_ = _SA_annotes3 ( SAL_name , "_Const_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __readaccess_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Const_); })))
    {
        mixin(enumMixinStr__Const_);
    }
}

static if (!is(typeof(_In_)))
{
    private enum enumMixinStr__In_ = `enum _In_ = _SA_annotes3 ( SAL_name , "_In_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __notnull_impl_notref ) _Pre_valid_impl_ _Deref_pre1_impl_ ( __readaccess_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__In_); })))
    {
        mixin(enumMixinStr__In_);
    }
}

static if (!is(typeof(_In_opt_)))
{
    private enum enumMixinStr__In_opt_ = `enum _In_opt_ = _SA_annotes3 ( SAL_name , "_In_opt_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __maybenull_impl_notref ) _Pre_valid_impl_ _Deref_pre_readonly_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__In_opt_); })))
    {
        mixin(enumMixinStr__In_opt_);
    }
}

static if (!is(typeof(_In_z_)))
{
    private enum enumMixinStr__In_z_ = `enum _In_z_ = _SA_annotes3 ( SAL_name , "_In_z_" , "" , "2" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_In_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __notnull_impl_notref ) _Pre_valid_impl_ _Deref_pre1_impl_ ( __readaccess_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ ) _Pre1_impl_ ( __zterm_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__In_z_); })))
    {
        mixin(enumMixinStr__In_z_);
    }
}

static if (!is(typeof(_In_opt_z_)))
{
    private enum enumMixinStr__In_opt_z_ = `enum _In_opt_z_ = _SA_annotes3 ( SAL_name , "_In_opt_z_" , "" , "2" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_In_opt_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __maybenull_impl_notref ) _Pre_valid_impl_ _Deref_pre_readonly_ _SAL_nop_impl_ _SAL_nop_impl_ ) _Pre1_impl_ ( __zterm_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__In_opt_z_); })))
    {
        mixin(enumMixinStr__In_opt_z_);
    }
}
static if (!is(typeof(_Out_)))
{
    private enum enumMixinStr__Out_ = `enum _Out_ = _SA_annotes3 ( SAL_name , "_Out_" , "" , "2" ) _Group_impl_ ( _Out_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Out_); })))
    {
        mixin(enumMixinStr__Out_);
    }
}

static if (!is(typeof(_Out_opt_)))
{
    private enum enumMixinStr__Out_opt_ = `enum _Out_opt_ = _SA_annotes3 ( SAL_name , "_Out_opt_" , "" , "2" ) _Group_impl_ ( _Out_opt_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Out_opt_); })))
    {
        mixin(enumMixinStr__Out_opt_);
    }
}
static if (!is(typeof(_Inout_)))
{
    private enum enumMixinStr__Inout_ = `enum _Inout_ = _SA_annotes3 ( SAL_name , "_Inout_" , "" , "2" ) _Group_impl_ ( _Prepost_valid_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Inout_); })))
    {
        mixin(enumMixinStr__Inout_);
    }
}

static if (!is(typeof(_Inout_opt_)))
{
    private enum enumMixinStr__Inout_opt_ = `enum _Inout_opt_ = _SA_annotes3 ( SAL_name , "_Inout_opt_" , "" , "2" ) _Group_impl_ ( _Prepost_opt_valid_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Inout_opt_); })))
    {
        mixin(enumMixinStr__Inout_opt_);
    }
}

static if (!is(typeof(_Inout_z_)))
{
    private enum enumMixinStr__Inout_z_ = `enum _Inout_z_ = _SA_annotes3 ( SAL_name , "_Inout_z_" , "" , "2" ) _Group_impl_ ( _Prepost_z_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Inout_z_); })))
    {
        mixin(enumMixinStr__Inout_z_);
    }
}

static if (!is(typeof(_Inout_opt_z_)))
{
    private enum enumMixinStr__Inout_opt_z_ = `enum _Inout_opt_z_ = _SA_annotes3 ( SAL_name , "_Inout_opt_z_" , "" , "2" ) _Group_impl_ ( _Prepost_opt_z_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Inout_opt_z_); })))
    {
        mixin(enumMixinStr__Inout_opt_z_);
    }
}
static if (!is(typeof(_Outptr_)))
{
    private enum enumMixinStr__Outptr_ = `enum _Outptr_ = _SA_annotes3 ( SAL_name , "_Outptr_" , "" , "2" ) _Group_impl_ ( _Out_impl_ _Deref_post2_impl_ ( __notnull_impl_notref , __count_impl ( 1 ) ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Outptr_); })))
    {
        mixin(enumMixinStr__Outptr_);
    }
}

static if (!is(typeof(_Outptr_result_maybenull_)))
{
    private enum enumMixinStr__Outptr_result_maybenull_ = `enum _Outptr_result_maybenull_ = _SA_annotes3 ( SAL_name , "_Outptr_result_maybenull_" , "" , "2" ) _Group_impl_ ( _Out_impl_ _Deref_post2_impl_ ( __maybenull_impl_notref , __count_impl ( 1 ) ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Outptr_result_maybenull_); })))
    {
        mixin(enumMixinStr__Outptr_result_maybenull_);
    }
}

static if (!is(typeof(_Outptr_opt_)))
{
    private enum enumMixinStr__Outptr_opt_ = `enum _Outptr_opt_ = _SA_annotes3 ( SAL_name , "_Outptr_opt_" , "" , "2" ) _Group_impl_ ( _Out_opt_impl_ _Deref_post2_impl_ ( __notnull_impl_notref , __count_impl ( 1 ) ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Outptr_opt_); })))
    {
        mixin(enumMixinStr__Outptr_opt_);
    }
}

static if (!is(typeof(_Outptr_opt_result_maybenull_)))
{
    private enum enumMixinStr__Outptr_opt_result_maybenull_ = `enum _Outptr_opt_result_maybenull_ = _SA_annotes3 ( SAL_name , "_Outptr_opt_result_maybenull_" , "" , "2" ) _Group_impl_ ( _Out_opt_impl_ _Deref_post2_impl_ ( __maybenull_impl_notref , __count_impl ( 1 ) ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Outptr_opt_result_maybenull_); })))
    {
        mixin(enumMixinStr__Outptr_opt_result_maybenull_);
    }
}

static if (!is(typeof(_Outptr_result_z_)))
{
    private enum enumMixinStr__Outptr_result_z_ = `enum _Outptr_result_z_ = _SA_annotes3 ( SAL_name , "_Outptr_result_z_" , "" , "2" ) _Group_impl_ ( _Out_impl_ _Deref_post_z_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Outptr_result_z_); })))
    {
        mixin(enumMixinStr__Outptr_result_z_);
    }
}

static if (!is(typeof(_Outptr_opt_result_z_)))
{
    private enum enumMixinStr__Outptr_opt_result_z_ = `enum _Outptr_opt_result_z_ = _SA_annotes3 ( SAL_name , "_Outptr_opt_result_z_" , "" , "2" ) _Group_impl_ ( _Out_opt_impl_ _Deref_post_z_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Outptr_opt_result_z_); })))
    {
        mixin(enumMixinStr__Outptr_opt_result_z_);
    }
}

static if (!is(typeof(_Outptr_result_maybenull_z_)))
{
    private enum enumMixinStr__Outptr_result_maybenull_z_ = `enum _Outptr_result_maybenull_z_ = _SA_annotes3 ( SAL_name , "_Outptr_result_maybenull_z_" , "" , "2" ) _Group_impl_ ( _Out_impl_ _Deref_post_opt_z_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Outptr_result_maybenull_z_); })))
    {
        mixin(enumMixinStr__Outptr_result_maybenull_z_);
    }
}

static if (!is(typeof(_Outptr_opt_result_maybenull_z_)))
{
    private enum enumMixinStr__Outptr_opt_result_maybenull_z_ = `enum _Outptr_opt_result_maybenull_z_ = _SA_annotes3 ( SAL_name , "_Outptr_opt_result_maybenull_z_" , "" , "2" ) _Group_impl_ ( _Out_opt_impl_ _Deref_post_opt_z_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Outptr_opt_result_maybenull_z_); })))
    {
        mixin(enumMixinStr__Outptr_opt_result_maybenull_z_);
    }
}

static if (!is(typeof(_Outptr_result_nullonfailure_)))
{
    private enum enumMixinStr__Outptr_result_nullonfailure_ = `enum _Outptr_result_nullonfailure_ = _SA_annotes3 ( SAL_name , "_Outptr_result_nullonfailure_" , "" , "2" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Outptr_" , "" , "2" ) _Group_impl_ ( _Out_impl_ _Deref_post2_impl_ ( __notnull_impl_notref , __count_impl ( 1 ) ) _SAL_nop_impl_ _SAL_nop_impl_ ) _On_failure_impl_ ( _Deref_post_null_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Outptr_result_nullonfailure_); })))
    {
        mixin(enumMixinStr__Outptr_result_nullonfailure_);
    }
}

static if (!is(typeof(_Outptr_opt_result_nullonfailure_)))
{
    private enum enumMixinStr__Outptr_opt_result_nullonfailure_ = `enum _Outptr_opt_result_nullonfailure_ = _SA_annotes3 ( SAL_name , "_Outptr_opt_result_nullonfailure_" , "" , "2" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Outptr_opt_" , "" , "2" ) _Group_impl_ ( _Out_opt_impl_ _Deref_post2_impl_ ( __notnull_impl_notref , __count_impl ( 1 ) ) _SAL_nop_impl_ _SAL_nop_impl_ ) _On_failure_impl_ ( _Deref_post_null_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({
                mixin(enumMixinStr__Outptr_opt_result_nullonfailure_);
            })))
    {
        mixin(enumMixinStr__Outptr_opt_result_nullonfailure_);
    }
}

static if (!is(typeof(_COM_Outptr_)))
{
    private enum enumMixinStr__COM_Outptr_ = `enum _COM_Outptr_ = _SA_annotes3 ( SAL_name , "_COM_Outptr_" , "" , "2" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Outptr_" , "" , "2" ) _Group_impl_ ( _Out_impl_ _Deref_post2_impl_ ( __notnull_impl_notref , __count_impl ( 1 ) ) _SAL_nop_impl_ _SAL_nop_impl_ ) _On_failure_impl_ ( _Deref_post_null_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__COM_Outptr_); })))
    {
        mixin(enumMixinStr__COM_Outptr_);
    }
}

static if (!is(typeof(_COM_Outptr_result_maybenull_)))
{
    private enum enumMixinStr__COM_Outptr_result_maybenull_ = `enum _COM_Outptr_result_maybenull_ = _SA_annotes3 ( SAL_name , "_COM_Outptr_result_maybenull_" , "" , "2" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Outptr_result_maybenull_" , "" , "2" ) _Group_impl_ ( _Out_impl_ _Deref_post2_impl_ ( __maybenull_impl_notref , __count_impl ( 1 ) ) _SAL_nop_impl_ _SAL_nop_impl_ ) _On_failure_impl_ ( _Deref_post_null_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__COM_Outptr_result_maybenull_); })))
    {
        mixin(enumMixinStr__COM_Outptr_result_maybenull_);
    }
}

static if (!is(typeof(_COM_Outptr_opt_)))
{
    private enum enumMixinStr__COM_Outptr_opt_ = `enum _COM_Outptr_opt_ = _SA_annotes3 ( SAL_name , "_COM_Outptr_opt_" , "" , "2" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Outptr_opt_" , "" , "2" ) _Group_impl_ ( _Out_opt_impl_ _Deref_post2_impl_ ( __notnull_impl_notref , __count_impl ( 1 ) ) _SAL_nop_impl_ _SAL_nop_impl_ ) _On_failure_impl_ ( _Deref_post_null_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__COM_Outptr_opt_); })))
    {
        mixin(enumMixinStr__COM_Outptr_opt_);
    }
}

static if (!is(typeof(_COM_Outptr_opt_result_maybenull_)))
{
    private enum enumMixinStr__COM_Outptr_opt_result_maybenull_ = `enum _COM_Outptr_opt_result_maybenull_ = _SA_annotes3 ( SAL_name , "_COM_Outptr_opt_result_maybenull_" , "" , "2" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Outptr_opt_result_maybenull_" , "" , "2" ) _Group_impl_ ( _Out_opt_impl_ _Deref_post2_impl_ ( __maybenull_impl_notref , __count_impl ( 1 ) ) _SAL_nop_impl_ _SAL_nop_impl_ ) _On_failure_impl_ ( _Deref_post_null_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({
                mixin(enumMixinStr__COM_Outptr_opt_result_maybenull_);
            })))
    {
        mixin(enumMixinStr__COM_Outptr_opt_result_maybenull_);
    }
}
static if (!is(typeof(_Outref_)))
{
    private enum enumMixinStr__Outref_ = `enum _Outref_ = _SA_annotes3 ( SAL_name , "_Outref_" , "" , "2" ) _Group_impl_ ( _Out_impl_ _Post_notnull_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Outref_); })))
    {
        mixin(enumMixinStr__Outref_);
    }
}

static if (!is(typeof(_Outref_result_maybenull_)))
{
    private enum enumMixinStr__Outref_result_maybenull_ = `enum _Outref_result_maybenull_ = _SA_annotes3 ( SAL_name , "_Outref_result_maybenull_" , "" , "2" ) _Group_impl_ ( _Pre2_impl_ ( __notnull_impl_notref , __cap_c_one_notref_impl ) _Post_maybenull_ _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Outref_result_maybenull_); })))
    {
        mixin(enumMixinStr__Outref_result_maybenull_);
    }
}
static if (!is(typeof(_Outref_result_nullonfailure_)))
{
    private enum enumMixinStr__Outref_result_nullonfailure_ = `enum _Outref_result_nullonfailure_ = _SA_annotes3 ( SAL_name , "_Outref_result_nullonfailure_" , "" , "2" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Outref_" , "" , "2" ) _Group_impl_ ( _Out_impl_ _Post_notnull_ _SAL_nop_impl_ _SAL_nop_impl_ ) _On_failure_impl_ ( _Post_null_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Outref_result_nullonfailure_); })))
    {
        mixin(enumMixinStr__Outref_result_nullonfailure_);
    }
}

static if (!is(typeof(_Result_nullonfailure_)))
{
    private enum enumMixinStr__Result_nullonfailure_ = `enum _Result_nullonfailure_ = _SA_annotes3 ( SAL_name , "_Result_nullonfailure_" , "" , "2" ) _Group_impl_ ( _On_failure_impl_ ( _Notref_impl_ _Deref_impl_ _Post_null_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Result_nullonfailure_); })))
    {
        mixin(enumMixinStr__Result_nullonfailure_);
    }
}

static if (!is(typeof(_Result_zeroonfailure_)))
{
    private enum enumMixinStr__Result_zeroonfailure_ = `enum _Result_zeroonfailure_ = _SA_annotes3 ( SAL_name , "_Result_zeroonfailure_" , "" , "2" ) _Group_impl_ ( _On_failure_impl_ ( _Notref_impl_ _Deref_impl_ _Out_range_ ( == , 0 ) _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Result_zeroonfailure_); })))
    {
        mixin(enumMixinStr__Result_zeroonfailure_);
    }
}

static if (!is(typeof(_Ret_z_)))
{
    private enum enumMixinStr__Ret_z_ = `enum _Ret_z_ = _SA_annotes3 ( SAL_name , "_Ret_z_" , "" , "2" ) _Group_impl_ ( _Ret2_impl_ ( __notnull_impl , __zterm_impl ) _Ret_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Ret_z_); })))
    {
        mixin(enumMixinStr__Ret_z_);
    }
}

static if (!is(typeof(_Ret_maybenull_z_)))
{
    private enum enumMixinStr__Ret_maybenull_z_ = `enum _Ret_maybenull_z_ = _SA_annotes3 ( SAL_name , "_Ret_maybenull_z_" , "" , "2" ) _Group_impl_ ( _Ret2_impl_ ( __maybenull_impl , __zterm_impl ) _Ret_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Ret_maybenull_z_); })))
    {
        mixin(enumMixinStr__Ret_maybenull_z_);
    }
}

static if (!is(typeof(_Ret_notnull_)))
{
    private enum enumMixinStr__Ret_notnull_ = `enum _Ret_notnull_ = _SA_annotes3 ( SAL_name , "_Ret_notnull_" , "" , "2" ) _Group_impl_ ( _Ret1_impl_ ( __notnull_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Ret_notnull_); })))
    {
        mixin(enumMixinStr__Ret_notnull_);
    }
}

static if (!is(typeof(_Ret_maybenull_)))
{
    private enum enumMixinStr__Ret_maybenull_ = `enum _Ret_maybenull_ = _SA_annotes3 ( SAL_name , "_Ret_maybenull_" , "" , "2" ) _Group_impl_ ( _Ret1_impl_ ( __maybenull_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Ret_maybenull_); })))
    {
        mixin(enumMixinStr__Ret_maybenull_);
    }
}

static if (!is(typeof(_Ret_null_)))
{
    private enum enumMixinStr__Ret_null_ = `enum _Ret_null_ = _SA_annotes3 ( SAL_name , "_Ret_null_" , "" , "2" ) _Group_impl_ ( _Ret1_impl_ ( __null_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Ret_null_); })))
    {
        mixin(enumMixinStr__Ret_null_);
    }
}

static if (!is(typeof(_Ret_valid_)))
{
    private enum enumMixinStr__Ret_valid_ = `enum _Ret_valid_ = _SA_annotes3 ( SAL_name , "_Ret_valid_" , "" , "2" ) _Group_impl_ ( _Ret1_impl_ ( __notnull_impl_notref ) _Ret_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Ret_valid_); })))
    {
        mixin(enumMixinStr__Ret_valid_);
    }
}
static if (!is(typeof(_Points_to_data_)))
{
    private enum enumMixinStr__Points_to_data_ = `enum _Points_to_data_ = _SA_annotes3 ( SAL_name , "_Points_to_data_" , "" , "2" ) _Group_impl_ ( _Pre_ _Points_to_data_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Points_to_data_); })))
    {
        mixin(enumMixinStr__Points_to_data_);
    }
}

static if (!is(typeof(_Literal_)))
{
    private enum enumMixinStr__Literal_ = `enum _Literal_ = _SA_annotes3 ( SAL_name , "_Literal_" , "" , "2" ) _Group_impl_ ( _Pre_ _Literal_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Literal_); })))
    {
        mixin(enumMixinStr__Literal_);
    }
}

static if (!is(typeof(_Notliteral_)))
{
    private enum enumMixinStr__Notliteral_ = `enum _Notliteral_ = _SA_annotes3 ( SAL_name , "_Notliteral_" , "" , "2" ) _Group_impl_ ( _Pre_ _Notliteral_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Notliteral_); })))
    {
        mixin(enumMixinStr__Notliteral_);
    }
}

static if (!is(typeof(_Check_return_)))
{
    private enum enumMixinStr__Check_return_ = `enum _Check_return_ = _SA_annotes3 ( SAL_name , "_Check_return_" , "" , "2" ) _Group_impl_ ( _Check_return_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Check_return_); })))
    {
        mixin(enumMixinStr__Check_return_);
    }
}

static if (!is(typeof(_Must_inspect_result_)))
{
    private enum enumMixinStr__Must_inspect_result_ = `enum _Must_inspect_result_ = _SA_annotes3 ( SAL_name , "_Must_inspect_result_" , "" , "2" ) _Group_impl_ ( _Must_inspect_impl_ _Check_return_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Must_inspect_result_); })))
    {
        mixin(enumMixinStr__Must_inspect_result_);
    }
}

static if (!is(typeof(_Printf_format_string_)))
{
    private enum enumMixinStr__Printf_format_string_ = `enum _Printf_format_string_ = _SA_annotes3 ( SAL_name , "_Printf_format_string_" , "" , "2" ) _Group_impl_ ( _Printf_format_string_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Printf_format_string_); })))
    {
        mixin(enumMixinStr__Printf_format_string_);
    }
}

static if (!is(typeof(_Scanf_format_string_)))
{
    private enum enumMixinStr__Scanf_format_string_ = `enum _Scanf_format_string_ = _SA_annotes3 ( SAL_name , "_Scanf_format_string_" , "" , "2" ) _Group_impl_ ( _Scanf_format_string_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Scanf_format_string_); })))
    {
        mixin(enumMixinStr__Scanf_format_string_);
    }
}

static if (!is(typeof(_Scanf_s_format_string_)))
{
    private enum enumMixinStr__Scanf_s_format_string_ = `enum _Scanf_s_format_string_ = _SA_annotes3 ( SAL_name , "_Scanf_s_format_string_" , "" , "2" ) _Group_impl_ ( _Scanf_s_format_string_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Scanf_s_format_string_); })))
    {
        mixin(enumMixinStr__Scanf_s_format_string_);
    }
}
static if (!is(typeof(_Field_z_)))
{
    private enum enumMixinStr__Field_z_ = `enum _Field_z_ = _SA_annotes3 ( SAL_name , "_Field_z_" , "" , "2" ) _Group_impl_ ( _Null_terminated_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Field_z_); })))
    {
        mixin(enumMixinStr__Field_z_);
    }
}

static if (!is(typeof(_Pre_)))
{
    private enum enumMixinStr__Pre_ = `enum _Pre_ = _Pre_impl_;`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_); })))
    {
        mixin(enumMixinStr__Pre_);
    }
}

static if (!is(typeof(_Post_)))
{
    private enum enumMixinStr__Post_ = `enum _Post_ = _Post_impl_;`;
    static if (is(typeof({ mixin(enumMixinStr__Post_); })))
    {
        mixin(enumMixinStr__Post_);
    }
}

static if (!is(typeof(_Valid_)))
{
    private enum enumMixinStr__Valid_ = `enum _Valid_ = _Valid_impl_;`;
    static if (is(typeof({ mixin(enumMixinStr__Valid_); })))
    {
        mixin(enumMixinStr__Valid_);
    }
}

static if (!is(typeof(_Notvalid_)))
{
    private enum enumMixinStr__Notvalid_ = `enum _Notvalid_ = _Notvalid_impl_;`;
    static if (is(typeof({ mixin(enumMixinStr__Notvalid_); })))
    {
        mixin(enumMixinStr__Notvalid_);
    }
}

static if (!is(typeof(_Maybevalid_)))
{
    private enum enumMixinStr__Maybevalid_ = `enum _Maybevalid_ = _Maybevalid_impl_;`;
    static if (is(typeof({ mixin(enumMixinStr__Maybevalid_); })))
    {
        mixin(enumMixinStr__Maybevalid_);
    }
}
static if (!is(typeof(_Null_terminated_)))
{
    private enum enumMixinStr__Null_terminated_ = `enum _Null_terminated_ = _SA_annotes3 ( SAL_name , "_Null_terminated_" , "" , "2" ) _Group_impl_ ( _Null_terminated_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Null_terminated_); })))
    {
        mixin(enumMixinStr__Null_terminated_);
    }
}

static if (!is(typeof(_NullNull_terminated_)))
{
    private enum enumMixinStr__NullNull_terminated_ = `enum _NullNull_terminated_ = _SA_annotes3 ( SAL_name , "_NullNull_terminated_" , "" , "2" ) _Group_impl_ ( _NullNull_terminated_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__NullNull_terminated_); })))
    {
        mixin(enumMixinStr__NullNull_terminated_);
    }
}
static if (!is(typeof(_Null_)))
{
    private enum enumMixinStr__Null_ = `enum _Null_ = _SA_annotes3 ( SAL_name , "_Null_" , "" , "2" ) _Group_impl_ ( _Null_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Null_); })))
    {
        mixin(enumMixinStr__Null_);
    }
}

static if (!is(typeof(_Notnull_)))
{
    private enum enumMixinStr__Notnull_ = `enum _Notnull_ = _SA_annotes3 ( SAL_name , "_Notnull_" , "" , "2" ) _Group_impl_ ( _Notnull_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Notnull_); })))
    {
        mixin(enumMixinStr__Notnull_);
    }
}

static if (!is(typeof(_Maybenull_)))
{
    private enum enumMixinStr__Maybenull_ = `enum _Maybenull_ = _SA_annotes3 ( SAL_name , "_Maybenull_" , "" , "2" ) _Group_impl_ ( _Maybenull_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Maybenull_); })))
    {
        mixin(enumMixinStr__Maybenull_);
    }
}

static if (!is(typeof(_Pre_z_)))
{
    private enum enumMixinStr__Pre_z_ = `enum _Pre_z_ = _SA_annotes3 ( SAL_name , "_Pre_z_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __zterm_impl ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_z_); })))
    {
        mixin(enumMixinStr__Pre_z_);
    }
}

static if (!is(typeof(_Pre_valid_)))
{
    private enum enumMixinStr__Pre_valid_ = `enum _Pre_valid_ = _SA_annotes3 ( SAL_name , "_Pre_valid_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __notnull_impl_notref ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_valid_); })))
    {
        mixin(enumMixinStr__Pre_valid_);
    }
}

static if (!is(typeof(_Pre_opt_valid_)))
{
    private enum enumMixinStr__Pre_opt_valid_ = `enum _Pre_opt_valid_ = _SA_annotes3 ( SAL_name , "_Pre_opt_valid_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __maybenull_impl_notref ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_opt_valid_); })))
    {
        mixin(enumMixinStr__Pre_opt_valid_);
    }
}

static if (!is(typeof(_Pre_invalid_)))
{
    private enum enumMixinStr__Pre_invalid_ = `enum _Pre_invalid_ = _SA_annotes3 ( SAL_name , "_Pre_invalid_" , "" , "2" ) _Group_impl_ ( _Deref_pre1_impl_ ( __notvalid_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_invalid_); })))
    {
        mixin(enumMixinStr__Pre_invalid_);
    }
}

static if (!is(typeof(_Pre_unknown_)))
{
    private enum enumMixinStr__Pre_unknown_ = `enum _Pre_unknown_ = _SA_annotes3 ( SAL_name , "_Pre_unknown_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __maybevalid_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_unknown_); })))
    {
        mixin(enumMixinStr__Pre_unknown_);
    }
}

static if (!is(typeof(_Pre_notnull_)))
{
    private enum enumMixinStr__Pre_notnull_ = `enum _Pre_notnull_ = _SA_annotes3 ( SAL_name , "_Pre_notnull_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __notnull_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_notnull_); })))
    {
        mixin(enumMixinStr__Pre_notnull_);
    }
}

static if (!is(typeof(_Pre_maybenull_)))
{
    private enum enumMixinStr__Pre_maybenull_ = `enum _Pre_maybenull_ = _SA_annotes3 ( SAL_name , "_Pre_maybenull_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __maybenull_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_maybenull_); })))
    {
        mixin(enumMixinStr__Pre_maybenull_);
    }
}

static if (!is(typeof(_Pre_null_)))
{
    private enum enumMixinStr__Pre_null_ = `enum _Pre_null_ = _SA_annotes3 ( SAL_name , "_Pre_null_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __null_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_null_); })))
    {
        mixin(enumMixinStr__Pre_null_);
    }
}

static if (!is(typeof(_Post_z_)))
{
    private enum enumMixinStr__Post_z_ = `enum _Post_z_ = _SA_annotes3 ( SAL_name , "_Post_z_" , "" , "2" ) _Group_impl_ ( _Post1_impl_ ( __zterm_impl ) _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Post_z_); })))
    {
        mixin(enumMixinStr__Post_z_);
    }
}

static if (!is(typeof(_Post_valid_)))
{
    private enum enumMixinStr__Post_valid_ = `enum _Post_valid_ = _SA_annotes3 ( SAL_name , "_Post_valid_" , "" , "2" ) _Group_impl_ ( _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Post_valid_); })))
    {
        mixin(enumMixinStr__Post_valid_);
    }
}

static if (!is(typeof(_Post_invalid_)))
{
    private enum enumMixinStr__Post_invalid_ = `enum _Post_invalid_ = _SA_annotes3 ( SAL_name , "_Post_invalid_" , "" , "2" ) _Group_impl_ ( _Deref_post1_impl_ ( __notvalid_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Post_invalid_); })))
    {
        mixin(enumMixinStr__Post_invalid_);
    }
}

static if (!is(typeof(_Post_ptr_invalid_)))
{
    private enum enumMixinStr__Post_ptr_invalid_ = `enum _Post_ptr_invalid_ = _SA_annotes3 ( SAL_name , "_Post_ptr_invalid_" , "" , "2" ) _Group_impl_ ( _Post1_impl_ ( __notvalid_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Post_ptr_invalid_); })))
    {
        mixin(enumMixinStr__Post_ptr_invalid_);
    }
}

static if (!is(typeof(_Post_notnull_)))
{
    private enum enumMixinStr__Post_notnull_ = `enum _Post_notnull_ = _SA_annotes3 ( SAL_name , "_Post_notnull_" , "" , "2" ) _Group_impl_ ( _Post1_impl_ ( __notnull_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Post_notnull_); })))
    {
        mixin(enumMixinStr__Post_notnull_);
    }
}

static if (!is(typeof(_Post_null_)))
{
    private enum enumMixinStr__Post_null_ = `enum _Post_null_ = _SA_annotes3 ( SAL_name , "_Post_null_" , "" , "2" ) _Group_impl_ ( _Post1_impl_ ( __null_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Post_null_); })))
    {
        mixin(enumMixinStr__Post_null_);
    }
}

static if (!is(typeof(_Post_maybenull_)))
{
    private enum enumMixinStr__Post_maybenull_ = `enum _Post_maybenull_ = _SA_annotes3 ( SAL_name , "_Post_maybenull_" , "" , "2" ) _Group_impl_ ( _Post1_impl_ ( __maybenull_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Post_maybenull_); })))
    {
        mixin(enumMixinStr__Post_maybenull_);
    }
}

static if (!is(typeof(_Prepost_z_)))
{
    private enum enumMixinStr__Prepost_z_ = `enum _Prepost_z_ = _SA_annotes3 ( SAL_name , "_Prepost_z_" , "" , "2" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Pre_z_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __zterm_impl ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SA_annotes3 ( SAL_name , "_Post_z_" , "" , "2" ) _Group_impl_ ( _Post1_impl_ ( __zterm_impl ) _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Prepost_z_); })))
    {
        mixin(enumMixinStr__Prepost_z_);
    }
}
static if (!is(typeof(_Ret_)))
{
    private enum enumMixinStr__Ret_ = `enum _Ret_ = _SA_annotes3 ( SAL_name , "_Ret_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Ret_valid_" , "" , "2" ) _Group_impl_ ( _Ret1_impl_ ( __notnull_impl_notref ) _Ret_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Ret_); })))
    {
        mixin(enumMixinStr__Ret_);
    }
}

static if (!is(typeof(_Ret_opt_)))
{
    private enum enumMixinStr__Ret_opt_ = `enum _Ret_opt_ = _SA_annotes3 ( SAL_name , "_Ret_opt_" , "" , "1.1" ) _Group_impl_ ( _Ret_opt_valid_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Ret_opt_); })))
    {
        mixin(enumMixinStr__Ret_opt_);
    }
}

static if (!is(typeof(_In_bound_)))
{
    private enum enumMixinStr__In_bound_ = `enum _In_bound_ = _SA_annotes3 ( SAL_name , "_In_bound_" , "" , "1.1" ) _Group_impl_ ( _In_bound_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__In_bound_); })))
    {
        mixin(enumMixinStr__In_bound_);
    }
}

static if (!is(typeof(_Out_bound_)))
{
    private enum enumMixinStr__Out_bound_ = `enum _Out_bound_ = _SA_annotes3 ( SAL_name , "_Out_bound_" , "" , "1.1" ) _Group_impl_ ( _Out_bound_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Out_bound_); })))
    {
        mixin(enumMixinStr__Out_bound_);
    }
}

static if (!is(typeof(_Ret_bound_)))
{
    private enum enumMixinStr__Ret_bound_ = `enum _Ret_bound_ = _SA_annotes3 ( SAL_name , "_Ret_bound_" , "" , "1.1" ) _Group_impl_ ( _Ret_bound_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Ret_bound_); })))
    {
        mixin(enumMixinStr__Ret_bound_);
    }
}

static if (!is(typeof(_Deref_in_bound_)))
{
    private enum enumMixinStr__Deref_in_bound_ = `enum _Deref_in_bound_ = _SA_annotes3 ( SAL_name , "_Deref_in_bound_" , "" , "1.1" ) _Group_impl_ ( _Deref_in_bound_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_in_bound_); })))
    {
        mixin(enumMixinStr__Deref_in_bound_);
    }
}

static if (!is(typeof(_Deref_out_bound_)))
{
    private enum enumMixinStr__Deref_out_bound_ = `enum _Deref_out_bound_ = _SA_annotes3 ( SAL_name , "_Deref_out_bound_" , "" , "1.1" ) _Group_impl_ ( _Deref_out_bound_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_out_bound_); })))
    {
        mixin(enumMixinStr__Deref_out_bound_);
    }
}

static if (!is(typeof(_Deref_inout_bound_)))
{
    private enum enumMixinStr__Deref_inout_bound_ = `enum _Deref_inout_bound_ = _SA_annotes3 ( SAL_name , "_Deref_inout_bound_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Deref_in_bound_" , "" , "1.1" ) _Group_impl_ ( _Deref_in_bound_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SA_annotes3 ( SAL_name , "_Deref_out_bound_" , "" , "1.1" ) _Group_impl_ ( _Deref_out_bound_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_inout_bound_); })))
    {
        mixin(enumMixinStr__Deref_inout_bound_);
    }
}

static if (!is(typeof(_Deref_ret_bound_)))
{
    private enum enumMixinStr__Deref_ret_bound_ = `enum _Deref_ret_bound_ = _SA_annotes3 ( SAL_name , "_Deref_ret_bound_" , "" , "1.1" ) _Group_impl_ ( _Deref_ret_bound_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_ret_bound_); })))
    {
        mixin(enumMixinStr__Deref_ret_bound_);
    }
}

static if (!is(typeof(_Deref_out_)))
{
    private enum enumMixinStr__Deref_out_ = `enum _Deref_out_ = _SA_annotes3 ( SAL_name , "_Deref_out_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Out_" , "" , "2" ) _Group_impl_ ( _Out_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _Deref_post_valid_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_out_); })))
    {
        mixin(enumMixinStr__Deref_out_);
    }
}

static if (!is(typeof(_Deref_out_opt_)))
{
    private enum enumMixinStr__Deref_out_opt_ = `enum _Deref_out_opt_ = _SA_annotes3 ( SAL_name , "_Deref_out_opt_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Out_" , "" , "2" ) _Group_impl_ ( _Out_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _Deref_post_opt_valid_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_out_opt_); })))
    {
        mixin(enumMixinStr__Deref_out_opt_);
    }
}

static if (!is(typeof(_Deref_opt_out_)))
{
    private enum enumMixinStr__Deref_opt_out_ = `enum _Deref_opt_out_ = _SA_annotes3 ( SAL_name , "_Deref_opt_out_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Out_opt_" , "" , "2" ) _Group_impl_ ( _Out_opt_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _Deref_post_valid_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_opt_out_); })))
    {
        mixin(enumMixinStr__Deref_opt_out_);
    }
}

static if (!is(typeof(_Deref_opt_out_opt_)))
{
    private enum enumMixinStr__Deref_opt_out_opt_ = `enum _Deref_opt_out_opt_ = _SA_annotes3 ( SAL_name , "_Deref_opt_out_opt_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Out_opt_" , "" , "2" ) _Group_impl_ ( _Out_opt_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _Deref_post_opt_valid_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_opt_out_opt_); })))
    {
        mixin(enumMixinStr__Deref_opt_out_opt_);
    }
}

static if (!is(typeof(_Deref_out_z_)))
{
    private enum enumMixinStr__Deref_out_z_ = `enum _Deref_out_z_ = _SA_annotes3 ( SAL_name , "_Deref_out_z_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Out_" , "" , "2" ) _Group_impl_ ( _Out_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _Deref_post_z_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_out_z_); })))
    {
        mixin(enumMixinStr__Deref_out_z_);
    }
}

static if (!is(typeof(_Deref_out_opt_z_)))
{
    private enum enumMixinStr__Deref_out_opt_z_ = `enum _Deref_out_opt_z_ = _SA_annotes3 ( SAL_name , "_Deref_out_opt_z_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Out_" , "" , "2" ) _Group_impl_ ( _Out_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _Deref_post_opt_z_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_out_opt_z_); })))
    {
        mixin(enumMixinStr__Deref_out_opt_z_);
    }
}

static if (!is(typeof(_Deref_opt_out_z_)))
{
    private enum enumMixinStr__Deref_opt_out_z_ = `enum _Deref_opt_out_z_ = _SA_annotes3 ( SAL_name , "_Deref_opt_out_z_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Out_opt_" , "" , "2" ) _Group_impl_ ( _Out_opt_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _Deref_post_z_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_opt_out_z_); })))
    {
        mixin(enumMixinStr__Deref_opt_out_z_);
    }
}

static if (!is(typeof(_Deref_opt_out_opt_z_)))
{
    private enum enumMixinStr__Deref_opt_out_opt_z_ = `enum _Deref_opt_out_opt_z_ = _SA_annotes3 ( SAL_name , "_Deref_opt_out_opt_z_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Out_opt_" , "" , "2" ) _Group_impl_ ( _Out_opt_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _Deref_post_opt_z_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_opt_out_opt_z_); })))
    {
        mixin(enumMixinStr__Deref_opt_out_opt_z_);
    }
}

static if (!is(typeof(_Deref_pre_z_)))
{
    private enum enumMixinStr__Deref_pre_z_ = `enum _Deref_pre_z_ = _SA_annotes3 ( SAL_name , "_Deref_pre_z_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __notnull_impl_notref ) _Deref_pre1_impl_ ( __zterm_impl ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_pre_z_); })))
    {
        mixin(enumMixinStr__Deref_pre_z_);
    }
}

static if (!is(typeof(_Deref_pre_opt_z_)))
{
    private enum enumMixinStr__Deref_pre_opt_z_ = `enum _Deref_pre_opt_z_ = _SA_annotes3 ( SAL_name , "_Deref_pre_opt_z_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __maybenull_impl_notref ) _Deref_pre1_impl_ ( __zterm_impl ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_pre_opt_z_); })))
    {
        mixin(enumMixinStr__Deref_pre_opt_z_);
    }
}
static if (!is(typeof(_Deref_pre_valid_)))
{
    private enum enumMixinStr__Deref_pre_valid_ = `enum _Deref_pre_valid_ = _SA_annotes3 ( SAL_name , "_Deref_pre_valid_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __notnull_impl_notref ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_pre_valid_); })))
    {
        mixin(enumMixinStr__Deref_pre_valid_);
    }
}

static if (!is(typeof(_Deref_pre_opt_valid_)))
{
    private enum enumMixinStr__Deref_pre_opt_valid_ = `enum _Deref_pre_opt_valid_ = _SA_annotes3 ( SAL_name , "_Deref_pre_opt_valid_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __maybenull_impl_notref ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_pre_opt_valid_); })))
    {
        mixin(enumMixinStr__Deref_pre_opt_valid_);
    }
}

static if (!is(typeof(_Deref_pre_invalid_)))
{
    private enum enumMixinStr__Deref_pre_invalid_ = `enum _Deref_pre_invalid_ = _SA_annotes3 ( SAL_name , "_Deref_pre_invalid_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __notvalid_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_pre_invalid_); })))
    {
        mixin(enumMixinStr__Deref_pre_invalid_);
    }
}

static if (!is(typeof(_Deref_pre_notnull_)))
{
    private enum enumMixinStr__Deref_pre_notnull_ = `enum _Deref_pre_notnull_ = _SA_annotes3 ( SAL_name , "_Deref_pre_notnull_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __notnull_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_pre_notnull_); })))
    {
        mixin(enumMixinStr__Deref_pre_notnull_);
    }
}

static if (!is(typeof(_Deref_pre_maybenull_)))
{
    private enum enumMixinStr__Deref_pre_maybenull_ = `enum _Deref_pre_maybenull_ = _SA_annotes3 ( SAL_name , "_Deref_pre_maybenull_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __maybenull_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_pre_maybenull_); })))
    {
        mixin(enumMixinStr__Deref_pre_maybenull_);
    }
}

static if (!is(typeof(_Deref_pre_null_)))
{
    private enum enumMixinStr__Deref_pre_null_ = `enum _Deref_pre_null_ = _SA_annotes3 ( SAL_name , "_Deref_pre_null_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __null_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_pre_null_); })))
    {
        mixin(enumMixinStr__Deref_pre_null_);
    }
}

static if (!is(typeof(_Deref_pre_readonly_)))
{
    private enum enumMixinStr__Deref_pre_readonly_ = `enum _Deref_pre_readonly_ = _SA_annotes3 ( SAL_name , "_Deref_pre_readonly_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __readaccess_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_pre_readonly_); })))
    {
        mixin(enumMixinStr__Deref_pre_readonly_);
    }
}

static if (!is(typeof(_Deref_pre_writeonly_)))
{
    private enum enumMixinStr__Deref_pre_writeonly_ = `enum _Deref_pre_writeonly_ = _SA_annotes3 ( SAL_name , "_Deref_pre_writeonly_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __writeaccess_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_pre_writeonly_); })))
    {
        mixin(enumMixinStr__Deref_pre_writeonly_);
    }
}

static if (!is(typeof(_Deref_post_z_)))
{
    private enum enumMixinStr__Deref_post_z_ = `enum _Deref_post_z_ = _SA_annotes3 ( SAL_name , "_Deref_post_z_" , "" , "1.1" ) _Group_impl_ ( _Deref_post1_impl_ ( __notnull_impl_notref ) _Deref_post1_impl_ ( __zterm_impl ) _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_post_z_); })))
    {
        mixin(enumMixinStr__Deref_post_z_);
    }
}

static if (!is(typeof(_Deref_post_opt_z_)))
{
    private enum enumMixinStr__Deref_post_opt_z_ = `enum _Deref_post_opt_z_ = _SA_annotes3 ( SAL_name , "_Deref_post_opt_z_" , "" , "1.1" ) _Group_impl_ ( _Deref_post1_impl_ ( __maybenull_impl_notref ) _Deref_post1_impl_ ( __zterm_impl ) _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_post_opt_z_); })))
    {
        mixin(enumMixinStr__Deref_post_opt_z_);
    }
}
static if (!is(typeof(_Deref_post_valid_)))
{
    private enum enumMixinStr__Deref_post_valid_ = `enum _Deref_post_valid_ = _SA_annotes3 ( SAL_name , "_Deref_post_valid_" , "" , "1.1" ) _Group_impl_ ( _Deref_post1_impl_ ( __notnull_impl_notref ) _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_post_valid_); })))
    {
        mixin(enumMixinStr__Deref_post_valid_);
    }
}

static if (!is(typeof(_Deref_post_opt_valid_)))
{
    private enum enumMixinStr__Deref_post_opt_valid_ = `enum _Deref_post_opt_valid_ = _SA_annotes3 ( SAL_name , "_Deref_post_opt_valid_" , "" , "1.1" ) _Group_impl_ ( _Deref_post1_impl_ ( __maybenull_impl_notref ) _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_post_opt_valid_); })))
    {
        mixin(enumMixinStr__Deref_post_opt_valid_);
    }
}

static if (!is(typeof(_Deref_post_notnull_)))
{
    private enum enumMixinStr__Deref_post_notnull_ = `enum _Deref_post_notnull_ = _SA_annotes3 ( SAL_name , "_Deref_post_notnull_" , "" , "1.1" ) _Group_impl_ ( _Deref_post1_impl_ ( __notnull_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_post_notnull_); })))
    {
        mixin(enumMixinStr__Deref_post_notnull_);
    }
}

static if (!is(typeof(_Deref_post_maybenull_)))
{
    private enum enumMixinStr__Deref_post_maybenull_ = `enum _Deref_post_maybenull_ = _SA_annotes3 ( SAL_name , "_Deref_post_maybenull_" , "" , "1.1" ) _Group_impl_ ( _Deref_post1_impl_ ( __maybenull_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_post_maybenull_); })))
    {
        mixin(enumMixinStr__Deref_post_maybenull_);
    }
}

static if (!is(typeof(_Deref_post_null_)))
{
    private enum enumMixinStr__Deref_post_null_ = `enum _Deref_post_null_ = _SA_annotes3 ( SAL_name , "_Deref_post_null_" , "" , "1.1" ) _Group_impl_ ( _Deref_post1_impl_ ( __null_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_post_null_); })))
    {
        mixin(enumMixinStr__Deref_post_null_);
    }
}

static if (!is(typeof(_Deref_ret_z_)))
{
    private enum enumMixinStr__Deref_ret_z_ = `enum _Deref_ret_z_ = _SA_annotes3 ( SAL_name , "_Deref_ret_z_" , "" , "1.1" ) _Group_impl_ ( _Deref_ret1_impl_ ( __notnull_impl_notref ) _Deref_ret1_impl_ ( __zterm_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_ret_z_); })))
    {
        mixin(enumMixinStr__Deref_ret_z_);
    }
}

static if (!is(typeof(_Deref_ret_opt_z_)))
{
    private enum enumMixinStr__Deref_ret_opt_z_ = `enum _Deref_ret_opt_z_ = _SA_annotes3 ( SAL_name , "_Deref_ret_opt_z_" , "" , "1.1" ) _Group_impl_ ( _Deref_ret1_impl_ ( __maybenull_impl_notref ) _Ret1_impl_ ( __zterm_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_ret_opt_z_); })))
    {
        mixin(enumMixinStr__Deref_ret_opt_z_);
    }
}

static if (!is(typeof(_Deref2_pre_readonly_)))
{
    private enum enumMixinStr__Deref2_pre_readonly_ = `enum _Deref2_pre_readonly_ = _SA_annotes3 ( SAL_name , "_Deref2_pre_readonly_" , "" , "1.1" ) _Group_impl_ ( _Deref2_pre1_impl_ ( __readaccess_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref2_pre_readonly_); })))
    {
        mixin(enumMixinStr__Deref2_pre_readonly_);
    }
}

static if (!is(typeof(_Ret_opt_valid_)))
{
    private enum enumMixinStr__Ret_opt_valid_ = `enum _Ret_opt_valid_ = _SA_annotes3 ( SAL_name , "_Ret_opt_valid_" , "" , "1.1" ) _Group_impl_ ( _Ret1_impl_ ( __maybenull_impl_notref ) _Ret_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Ret_opt_valid_); })))
    {
        mixin(enumMixinStr__Ret_opt_valid_);
    }
}

static if (!is(typeof(_Ret_opt_z_)))
{
    private enum enumMixinStr__Ret_opt_z_ = `enum _Ret_opt_z_ = _SA_annotes3 ( SAL_name , "_Ret_opt_z_" , "" , "1.1" ) _Group_impl_ ( _Ret2_impl_ ( __maybenull_impl , __zterm_impl ) _Ret_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Ret_opt_z_); })))
    {
        mixin(enumMixinStr__Ret_opt_z_);
    }
}
static if (!is(typeof(_Pre_opt_z_)))
{
    private enum enumMixinStr__Pre_opt_z_ = `enum _Pre_opt_z_ = _SA_annotes3 ( SAL_name , "_Pre_opt_z_" , "" , "1.1" ) _Group_impl_ ( _Pre1_impl_ ( __maybenull_impl_notref ) _Pre1_impl_ ( __zterm_impl ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_opt_z_); })))
    {
        mixin(enumMixinStr__Pre_opt_z_);
    }
}

static if (!is(typeof(_Pre_readonly_)))
{
    private enum enumMixinStr__Pre_readonly_ = `enum _Pre_readonly_ = _SA_annotes3 ( SAL_name , "_Pre_readonly_" , "" , "1.1" ) _Group_impl_ ( _Pre1_impl_ ( __readaccess_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_readonly_); })))
    {
        mixin(enumMixinStr__Pre_readonly_);
    }
}

static if (!is(typeof(_Pre_writeonly_)))
{
    private enum enumMixinStr__Pre_writeonly_ = `enum _Pre_writeonly_ = _SA_annotes3 ( SAL_name , "_Pre_writeonly_" , "" , "1.1" ) _Group_impl_ ( _Pre1_impl_ ( __writeaccess_impl_notref ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_writeonly_); })))
    {
        mixin(enumMixinStr__Pre_writeonly_);
    }
}
static if (!is(typeof(_Pre_cap_c_one_)))
{
    private enum enumMixinStr__Pre_cap_c_one_ = `enum _Pre_cap_c_one_ = _SA_annotes3 ( SAL_name , "_Pre_cap_c_one_" , "" , "1.1" ) _Group_impl_ ( _Pre1_impl_ ( __notnull_impl_notref ) _Pre1_impl_ ( __cap_c_one_notref_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_cap_c_one_); })))
    {
        mixin(enumMixinStr__Pre_cap_c_one_);
    }
}

static if (!is(typeof(_Pre_opt_cap_c_one_)))
{
    private enum enumMixinStr__Pre_opt_cap_c_one_ = `enum _Pre_opt_cap_c_one_ = _SA_annotes3 ( SAL_name , "_Pre_opt_cap_c_one_" , "" , "1.1" ) _Group_impl_ ( _Pre1_impl_ ( __maybenull_impl_notref ) _Pre1_impl_ ( __cap_c_one_notref_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Pre_opt_cap_c_one_); })))
    {
        mixin(enumMixinStr__Pre_opt_cap_c_one_);
    }
}
static if (!is(typeof(_Post_maybez_)))
{
    private enum enumMixinStr__Post_maybez_ = `enum _Post_maybez_ = _SA_annotes3 ( SAL_name , "_Post_maybez_" , "" , "2" ) _Group_impl_ ( _Post1_impl_ ( __maybezterm_impl ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Post_maybez_); })))
    {
        mixin(enumMixinStr__Post_maybez_);
    }
}
static if (!is(typeof(_Prepost_opt_z_)))
{
    private enum enumMixinStr__Prepost_opt_z_ = `enum _Prepost_opt_z_ = _SA_annotes3 ( SAL_name , "_Prepost_opt_z_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Pre_opt_z_" , "" , "1.1" ) _Group_impl_ ( _Pre1_impl_ ( __maybenull_impl_notref ) _Pre1_impl_ ( __zterm_impl ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SA_annotes3 ( SAL_name , "_Post_z_" , "" , "2" ) _Group_impl_ ( _Post1_impl_ ( __zterm_impl ) _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Prepost_opt_z_); })))
    {
        mixin(enumMixinStr__Prepost_opt_z_);
    }
}
static if (!is(typeof(_Prepost_valid_)))
{
    private enum enumMixinStr__Prepost_valid_ = `enum _Prepost_valid_ = _SA_annotes3 ( SAL_name , "_Prepost_valid_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Pre_valid_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __notnull_impl_notref ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SA_annotes3 ( SAL_name , "_Post_valid_" , "" , "2" ) _Group_impl_ ( _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Prepost_valid_); })))
    {
        mixin(enumMixinStr__Prepost_valid_);
    }
}

static if (!is(typeof(_Prepost_opt_valid_)))
{
    private enum enumMixinStr__Prepost_opt_valid_ = `enum _Prepost_opt_valid_ = _SA_annotes3 ( SAL_name , "_Prepost_opt_valid_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Pre_opt_valid_" , "" , "2" ) _Group_impl_ ( _Pre1_impl_ ( __maybenull_impl_notref ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SA_annotes3 ( SAL_name , "_Post_valid_" , "" , "2" ) _Group_impl_ ( _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Prepost_opt_valid_); })))
    {
        mixin(enumMixinStr__Prepost_opt_valid_);
    }
}

static if (!is(typeof(_Deref_prepost_z_)))
{
    private enum enumMixinStr__Deref_prepost_z_ = `enum _Deref_prepost_z_ = _SA_annotes3 ( SAL_name , "_Deref_prepost_z_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Deref_pre_z_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __notnull_impl_notref ) _Deref_pre1_impl_ ( __zterm_impl ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SA_annotes3 ( SAL_name , "_Deref_post_z_" , "" , "1.1" ) _Group_impl_ ( _Deref_post1_impl_ ( __notnull_impl_notref ) _Deref_post1_impl_ ( __zterm_impl ) _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_prepost_z_); })))
    {
        mixin(enumMixinStr__Deref_prepost_z_);
    }
}

static if (!is(typeof(_Deref_prepost_opt_z_)))
{
    private enum enumMixinStr__Deref_prepost_opt_z_ = `enum _Deref_prepost_opt_z_ = _SA_annotes3 ( SAL_name , "_Deref_prepost_opt_z_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Deref_pre_opt_z_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __maybenull_impl_notref ) _Deref_pre1_impl_ ( __zterm_impl ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SA_annotes3 ( SAL_name , "_Deref_post_opt_z_" , "" , "1.1" ) _Group_impl_ ( _Deref_post1_impl_ ( __maybenull_impl_notref ) _Deref_post1_impl_ ( __zterm_impl ) _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_prepost_opt_z_); })))
    {
        mixin(enumMixinStr__Deref_prepost_opt_z_);
    }
}
static if (!is(typeof(_Deref_prepost_valid_)))
{
    private enum enumMixinStr__Deref_prepost_valid_ = `enum _Deref_prepost_valid_ = _SA_annotes3 ( SAL_name , "_Deref_prepost_valid_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Deref_pre_valid_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __notnull_impl_notref ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SA_annotes3 ( SAL_name , "_Deref_post_valid_" , "" , "1.1" ) _Group_impl_ ( _Deref_post1_impl_ ( __notnull_impl_notref ) _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_prepost_valid_); })))
    {
        mixin(enumMixinStr__Deref_prepost_valid_);
    }
}

static if (!is(typeof(_Deref_prepost_opt_valid_)))
{
    private enum enumMixinStr__Deref_prepost_opt_valid_ = `enum _Deref_prepost_opt_valid_ = _SA_annotes3 ( SAL_name , "_Deref_prepost_opt_valid_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Deref_pre_opt_valid_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __maybenull_impl_notref ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SA_annotes3 ( SAL_name , "_Deref_post_opt_valid_" , "" , "1.1" ) _Group_impl_ ( _Deref_post1_impl_ ( __maybenull_impl_notref ) _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_prepost_opt_valid_); })))
    {
        mixin(enumMixinStr__Deref_prepost_opt_valid_);
    }
}
static if (!is(typeof(_Deref_inout_z_)))
{
    private enum enumMixinStr__Deref_inout_z_ = `enum _Deref_inout_z_ = _SA_annotes3 ( SAL_name , "_Deref_inout_z_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Deref_prepost_z_" , "" , "1.1" ) _Group_impl_ ( _SA_annotes3 ( SAL_name , "_Deref_pre_z_" , "" , "1.1" ) _Group_impl_ ( _Deref_pre1_impl_ ( __notnull_impl_notref ) _Deref_pre1_impl_ ( __zterm_impl ) _Pre_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SA_annotes3 ( SAL_name , "_Deref_post_z_" , "" , "1.1" ) _Group_impl_ ( _Deref_post1_impl_ ( __notnull_impl_notref ) _Deref_post1_impl_ ( __zterm_impl ) _Post_valid_impl_ _SAL_nop_impl_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ ) _SAL_nop_impl_ _SAL_nop_impl_ );`;
    static if (is(typeof({ mixin(enumMixinStr__Deref_inout_z_); })))
    {
        mixin(enumMixinStr__Deref_inout_z_);
    }
}
static if (!is(typeof(_SAL_nop_impl_)))
{
    private enum enumMixinStr__SAL_nop_impl_ = `enum _SAL_nop_impl_ = X;`;
    static if (is(typeof({ mixin(enumMixinStr__SAL_nop_impl_); })))
    {
        mixin(enumMixinStr__SAL_nop_impl_);
    }
}
static if (!is(typeof(__in)))
{
    private enum enumMixinStr___in = `enum __in = ;`;
    static if (is(typeof({ mixin(enumMixinStr___in); })))
    {
        mixin(enumMixinStr___in);
    }
}
static if (!is(typeof(__in_z)))
{
    private enum enumMixinStr___in_z = `enum __in_z = ;`;
    static if (is(typeof({ mixin(enumMixinStr___in_z); })))
    {
        mixin(enumMixinStr___in_z);
    }
}
static if (!is(typeof(__in_nz)))
{
    private enum enumMixinStr___in_nz = `enum __in_nz = ;`;
    static if (is(typeof({ mixin(enumMixinStr___in_nz); })))
    {
        mixin(enumMixinStr___in_nz);
    }
}
static if (!is(typeof(__out)))
{
    private enum enumMixinStr___out = `enum __out = ;`;
    static if (is(typeof({ mixin(enumMixinStr___out); })))
    {
        mixin(enumMixinStr___out);
    }
}
static if (!is(typeof(__out_z)))
{
    private enum enumMixinStr___out_z = `enum __out_z = ;`;
    static if (is(typeof({ mixin(enumMixinStr___out_z); })))
    {
        mixin(enumMixinStr___out_z);
    }
}

static if (!is(typeof(__out_z_opt)))
{
    private enum enumMixinStr___out_z_opt = `enum __out_z_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___out_z_opt); })))
    {
        mixin(enumMixinStr___out_z_opt);
    }
}
static if (!is(typeof(__out_nz)))
{
    private enum enumMixinStr___out_nz = `enum __out_nz = ;`;
    static if (is(typeof({ mixin(enumMixinStr___out_nz); })))
    {
        mixin(enumMixinStr___out_nz);
    }
}

static if (!is(typeof(__out_nz_opt)))
{
    private enum enumMixinStr___out_nz_opt = `enum __out_nz_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___out_nz_opt); })))
    {
        mixin(enumMixinStr___out_nz_opt);
    }
}
static if (!is(typeof(__inout)))
{
    private enum enumMixinStr___inout = `enum __inout = ;`;
    static if (is(typeof({ mixin(enumMixinStr___inout); })))
    {
        mixin(enumMixinStr___inout);
    }
}
static if (!is(typeof(__inout_z)))
{
    private enum enumMixinStr___inout_z = `enum __inout_z = ;`;
    static if (is(typeof({ mixin(enumMixinStr___inout_z); })))
    {
        mixin(enumMixinStr___inout_z);
    }
}
static if (!is(typeof(__inout_nz)))
{
    private enum enumMixinStr___inout_nz = `enum __inout_nz = ;`;
    static if (is(typeof({ mixin(enumMixinStr___inout_nz); })))
    {
        mixin(enumMixinStr___inout_nz);
    }
}
static if (!is(typeof(__in_opt)))
{
    private enum enumMixinStr___in_opt = `enum __in_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___in_opt); })))
    {
        mixin(enumMixinStr___in_opt);
    }
}
static if (!is(typeof(__in_z_opt)))
{
    private enum enumMixinStr___in_z_opt = `enum __in_z_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___in_z_opt); })))
    {
        mixin(enumMixinStr___in_z_opt);
    }
}
static if (!is(typeof(__in_nz_opt)))
{
    private enum enumMixinStr___in_nz_opt = `enum __in_nz_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___in_nz_opt); })))
    {
        mixin(enumMixinStr___in_nz_opt);
    }
}
static if (!is(typeof(__out_opt)))
{
    private enum enumMixinStr___out_opt = `enum __out_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___out_opt); })))
    {
        mixin(enumMixinStr___out_opt);
    }
}
static if (!is(typeof(__inout_opt)))
{
    private enum enumMixinStr___inout_opt = `enum __inout_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___inout_opt); })))
    {
        mixin(enumMixinStr___inout_opt);
    }
}
static if (!is(typeof(__inout_z_opt)))
{
    private enum enumMixinStr___inout_z_opt = `enum __inout_z_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___inout_z_opt); })))
    {
        mixin(enumMixinStr___inout_z_opt);
    }
}
static if (!is(typeof(__inout_nz_opt)))
{
    private enum enumMixinStr___inout_nz_opt = `enum __inout_nz_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___inout_nz_opt); })))
    {
        mixin(enumMixinStr___inout_nz_opt);
    }
}
static if (!is(typeof(__deref_out)))
{
    private enum enumMixinStr___deref_out = `enum __deref_out = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_out); })))
    {
        mixin(enumMixinStr___deref_out);
    }
}
static if (!is(typeof(__deref_out_z)))
{
    private enum enumMixinStr___deref_out_z = `enum __deref_out_z = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_out_z); })))
    {
        mixin(enumMixinStr___deref_out_z);
    }
}
static if (!is(typeof(__deref_out_nz)))
{
    private enum enumMixinStr___deref_out_nz = `enum __deref_out_nz = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_out_nz); })))
    {
        mixin(enumMixinStr___deref_out_nz);
    }
}
static if (!is(typeof(__deref_inout)))
{
    private enum enumMixinStr___deref_inout = `enum __deref_inout = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_inout); })))
    {
        mixin(enumMixinStr___deref_inout);
    }
}

static if (!is(typeof(__deref_inout_z)))
{
    private enum enumMixinStr___deref_inout_z = `enum __deref_inout_z = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_inout_z); })))
    {
        mixin(enumMixinStr___deref_inout_z);
    }
}
static if (!is(typeof(__deref_inout_nz)))
{
    private enum enumMixinStr___deref_inout_nz = `enum __deref_inout_nz = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_inout_nz); })))
    {
        mixin(enumMixinStr___deref_inout_nz);
    }
}
static if (!is(typeof(__deref_out_opt)))
{
    private enum enumMixinStr___deref_out_opt = `enum __deref_out_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_out_opt); })))
    {
        mixin(enumMixinStr___deref_out_opt);
    }
}
static if (!is(typeof(__deref_out_z_opt)))
{
    private enum enumMixinStr___deref_out_z_opt = `enum __deref_out_z_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_out_z_opt); })))
    {
        mixin(enumMixinStr___deref_out_z_opt);
    }
}
static if (!is(typeof(__deref_out_nz_opt)))
{
    private enum enumMixinStr___deref_out_nz_opt = `enum __deref_out_nz_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_out_nz_opt); })))
    {
        mixin(enumMixinStr___deref_out_nz_opt);
    }
}
static if (!is(typeof(__deref_inout_opt)))
{
    private enum enumMixinStr___deref_inout_opt = `enum __deref_inout_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_inout_opt); })))
    {
        mixin(enumMixinStr___deref_inout_opt);
    }
}
static if (!is(typeof(__deref_inout_z_opt)))
{
    private enum enumMixinStr___deref_inout_z_opt = `enum __deref_inout_z_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_inout_z_opt); })))
    {
        mixin(enumMixinStr___deref_inout_z_opt);
    }
}
static if (!is(typeof(__deref_inout_nz_opt)))
{
    private enum enumMixinStr___deref_inout_nz_opt = `enum __deref_inout_nz_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_inout_nz_opt); })))
    {
        mixin(enumMixinStr___deref_inout_nz_opt);
    }
}
static if (!is(typeof(__deref_opt_out)))
{
    private enum enumMixinStr___deref_opt_out = `enum __deref_opt_out = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_opt_out); })))
    {
        mixin(enumMixinStr___deref_opt_out);
    }
}

static if (!is(typeof(__deref_opt_out_z)))
{
    private enum enumMixinStr___deref_opt_out_z = `enum __deref_opt_out_z = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_opt_out_z); })))
    {
        mixin(enumMixinStr___deref_opt_out_z);
    }
}
static if (!is(typeof(__deref_opt_inout)))
{
    private enum enumMixinStr___deref_opt_inout = `enum __deref_opt_inout = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_opt_inout); })))
    {
        mixin(enumMixinStr___deref_opt_inout);
    }
}
static if (!is(typeof(__deref_opt_inout_z)))
{
    private enum enumMixinStr___deref_opt_inout_z = `enum __deref_opt_inout_z = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_opt_inout_z); })))
    {
        mixin(enumMixinStr___deref_opt_inout_z);
    }
}
static if (!is(typeof(__deref_opt_inout_nz)))
{
    private enum enumMixinStr___deref_opt_inout_nz = `enum __deref_opt_inout_nz = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_opt_inout_nz); })))
    {
        mixin(enumMixinStr___deref_opt_inout_nz);
    }
}
static if (!is(typeof(__deref_opt_out_opt)))
{
    private enum enumMixinStr___deref_opt_out_opt = `enum __deref_opt_out_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_opt_out_opt); })))
    {
        mixin(enumMixinStr___deref_opt_out_opt);
    }
}
static if (!is(typeof(__deref_opt_out_z_opt)))
{
    private enum enumMixinStr___deref_opt_out_z_opt = `enum __deref_opt_out_z_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_opt_out_z_opt); })))
    {
        mixin(enumMixinStr___deref_opt_out_z_opt);
    }
}
static if (!is(typeof(__deref_opt_out_nz_opt)))
{
    private enum enumMixinStr___deref_opt_out_nz_opt = `enum __deref_opt_out_nz_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_opt_out_nz_opt); })))
    {
        mixin(enumMixinStr___deref_opt_out_nz_opt);
    }
}
static if (!is(typeof(__deref_opt_inout_opt)))
{
    private enum enumMixinStr___deref_opt_inout_opt = `enum __deref_opt_inout_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_opt_inout_opt); })))
    {
        mixin(enumMixinStr___deref_opt_inout_opt);
    }
}
static if (!is(typeof(__deref_opt_inout_z_opt)))
{
    private enum enumMixinStr___deref_opt_inout_z_opt = `enum __deref_opt_inout_z_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_opt_inout_z_opt); })))
    {
        mixin(enumMixinStr___deref_opt_inout_z_opt);
    }
}
static if (!is(typeof(__deref_opt_inout_nz_opt)))
{
    private enum enumMixinStr___deref_opt_inout_nz_opt = `enum __deref_opt_inout_nz_opt = ;`;
    static if (is(typeof({ mixin(enumMixinStr___deref_opt_inout_nz_opt); })))
    {
        mixin(enumMixinStr___deref_opt_inout_nz_opt);
    }
}
static if (!is(typeof(__nullterminated)))
{
    private enum enumMixinStr___nullterminated = `enum __nullterminated = ;`;
    static if (is(typeof({ mixin(enumMixinStr___nullterminated); })))
    {
        mixin(enumMixinStr___nullterminated);
    }
}

static if (!is(typeof(__nullnullterminated)))
{
    private enum enumMixinStr___nullnullterminated = `enum __nullnullterminated = ;`;
    static if (is(typeof({ mixin(enumMixinStr___nullnullterminated); })))
    {
        mixin(enumMixinStr___nullnullterminated);
    }
}

static if (!is(typeof(__reserved)))
{
    private enum enumMixinStr___reserved = `enum __reserved = ;`;
    static if (is(typeof({ mixin(enumMixinStr___reserved); })))
    {
        mixin(enumMixinStr___reserved);
    }
}

static if (!is(typeof(__checkReturn)))
{
    private enum enumMixinStr___checkReturn = `enum __checkReturn = ;`;
    static if (is(typeof({ mixin(enumMixinStr___checkReturn); })))
    {
        mixin(enumMixinStr___checkReturn);
    }
}

static if (!is(typeof(__override)))
{
    private enum enumMixinStr___override = `enum __override = ;`;
    static if (is(typeof({ mixin(enumMixinStr___override); })))
    {
        mixin(enumMixinStr___override);
    }
}

static if (!is(typeof(__callback)))
{
    private enum enumMixinStr___callback = `enum __callback = ;`;
    static if (is(typeof({ mixin(enumMixinStr___callback); })))
    {
        mixin(enumMixinStr___callback);
    }
}

static if (!is(typeof(__format_string)))
{
    private enum enumMixinStr___format_string = `enum __format_string = ;`;
    static if (is(typeof({ mixin(enumMixinStr___format_string); })))
    {
        mixin(enumMixinStr___format_string);
    }
}
static if (!is(typeof(__useHeader)))
{
    private enum enumMixinStr___useHeader = `enum __useHeader = ;`;
    static if (is(typeof({ mixin(enumMixinStr___useHeader); })))
    {
        mixin(enumMixinStr___useHeader);
    }
}

static if (!is(typeof(__fallthrough)))
{
    private enum enumMixinStr___fallthrough = `enum __fallthrough = ;`;
    static if (is(typeof({ mixin(enumMixinStr___fallthrough); })))
    {
        mixin(enumMixinStr___fallthrough);
    }
}
static if (!is(typeof(_Analysis_noreturn_)))
{
    private enum enumMixinStr__Analysis_noreturn_ = `enum _Analysis_noreturn_ = ;`;
    static if (is(typeof({ mixin(enumMixinStr__Analysis_noreturn_); })))
    {
        mixin(enumMixinStr__Analysis_noreturn_);
    }
}
static if (!is(typeof(_Enum_is_bitflag_)))
{
    private enum enumMixinStr__Enum_is_bitflag_ = `enum _Enum_is_bitflag_ = ;`;
    static if (is(typeof({ mixin(enumMixinStr__Enum_is_bitflag_); })))
    {
        mixin(enumMixinStr__Enum_is_bitflag_);
    }
}

static if (!is(typeof(_Strict_type_match_)))
{
    private enum enumMixinStr__Strict_type_match_ = `enum _Strict_type_match_ = ;`;
    static if (is(typeof({ mixin(enumMixinStr__Strict_type_match_); })))
    {
        mixin(enumMixinStr__Strict_type_match_);
    }
}

static if (!is(typeof(_Maybe_raises_SEH_exception_)))
{
    private enum enumMixinStr__Maybe_raises_SEH_exception_ = `enum _Maybe_raises_SEH_exception_ = ;`;
    static if (is(typeof({ mixin(enumMixinStr__Maybe_raises_SEH_exception_); })))
    {
        mixin(enumMixinStr__Maybe_raises_SEH_exception_);
    }
}

static if (!is(typeof(_Raises_SEH_exception_)))
{
    private enum enumMixinStr__Raises_SEH_exception_ = `enum _Raises_SEH_exception_ = ;`;
    static if (is(typeof({ mixin(enumMixinStr__Raises_SEH_exception_); })))
    {
        mixin(enumMixinStr__Raises_SEH_exception_);
    }
}

static if (!is(typeof(INT8_MIN)))
{
    private enum enumMixinStr_INT8_MIN = `enum INT8_MIN = ( - 127i8 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_INT8_MIN); })))
    {
        mixin(enumMixinStr_INT8_MIN);
    }
}

static if (!is(typeof(INT16_MIN)))
{
    private enum enumMixinStr_INT16_MIN = `enum INT16_MIN = ( - 32767i16 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_INT16_MIN); })))
    {
        mixin(enumMixinStr_INT16_MIN);
    }
}

static if (!is(typeof(INT32_MIN)))
{
    private enum enumMixinStr_INT32_MIN = `enum INT32_MIN = ( - 2147483647i32 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_INT32_MIN); })))
    {
        mixin(enumMixinStr_INT32_MIN);
    }
}

static if (!is(typeof(INT64_MIN)))
{
    private enum enumMixinStr_INT64_MIN = `enum INT64_MIN = ( - 9223372036854775807i64 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_INT64_MIN); })))
    {
        mixin(enumMixinStr_INT64_MIN);
    }
}

static if (!is(typeof(INT8_MAX)))
{
    private enum enumMixinStr_INT8_MAX = `enum INT8_MAX = 12;`;
    static if (is(typeof({ mixin(enumMixinStr_INT8_MAX); })))
    {
        mixin(enumMixinStr_INT8_MAX);
    }
}

static if (!is(typeof(INT16_MAX)))
{
    private enum enumMixinStr_INT16_MAX = `enum INT16_MAX = 32767;`;
    static if (is(typeof({ mixin(enumMixinStr_INT16_MAX); })))
    {
        mixin(enumMixinStr_INT16_MAX);
    }
}

static if (!is(typeof(INT32_MAX)))
{
    private enum enumMixinStr_INT32_MAX = `enum INT32_MAX = 2147483647;`;
    static if (is(typeof({ mixin(enumMixinStr_INT32_MAX); })))
    {
        mixin(enumMixinStr_INT32_MAX);
    }
}

static if (!is(typeof(INT64_MAX)))
{
    private enum enumMixinStr_INT64_MAX = `enum INT64_MAX = 9223372036854775807L;`;
    static if (is(typeof({ mixin(enumMixinStr_INT64_MAX); })))
    {
        mixin(enumMixinStr_INT64_MAX);
    }
}

static if (!is(typeof(UINT8_MAX)))
{
    private enum enumMixinStr_UINT8_MAX = `enum UINT8_MAX = 0xff;`;
    static if (is(typeof({ mixin(enumMixinStr_UINT8_MAX); })))
    {
        mixin(enumMixinStr_UINT8_MAX);
    }
}

static if (!is(typeof(UINT16_MAX)))
{
    private enum enumMixinStr_UINT16_MAX = `enum UINT16_MAX = 0xffffu;`;
    static if (is(typeof({ mixin(enumMixinStr_UINT16_MAX); })))
    {
        mixin(enumMixinStr_UINT16_MAX);
    }
}

static if (!is(typeof(UINT32_MAX)))
{
    private enum enumMixinStr_UINT32_MAX = `enum UINT32_MAX = 0xffffffffu;`;
    static if (is(typeof({ mixin(enumMixinStr_UINT32_MAX); })))
    {
        mixin(enumMixinStr_UINT32_MAX);
    }
}

static if (!is(typeof(UINT64_MAX)))
{
    private enum enumMixinStr_UINT64_MAX = `enum UINT64_MAX = 0xffffffffffffffffuL;`;
    static if (is(typeof({ mixin(enumMixinStr_UINT64_MAX); })))
    {
        mixin(enumMixinStr_UINT64_MAX);
    }
}

static if (!is(typeof(INT_LEAST8_MIN)))
{
    private enum enumMixinStr_INT_LEAST8_MIN = `enum INT_LEAST8_MIN = ( - 127i8 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_INT_LEAST8_MIN); })))
    {
        mixin(enumMixinStr_INT_LEAST8_MIN);
    }
}

static if (!is(typeof(INT_LEAST16_MIN)))
{
    private enum enumMixinStr_INT_LEAST16_MIN = `enum INT_LEAST16_MIN = ( - 32767i16 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_INT_LEAST16_MIN); })))
    {
        mixin(enumMixinStr_INT_LEAST16_MIN);
    }
}

static if (!is(typeof(INT_LEAST32_MIN)))
{
    private enum enumMixinStr_INT_LEAST32_MIN = `enum INT_LEAST32_MIN = ( - 2147483647i32 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_INT_LEAST32_MIN); })))
    {
        mixin(enumMixinStr_INT_LEAST32_MIN);
    }
}

static if (!is(typeof(INT_LEAST64_MIN)))
{
    private enum enumMixinStr_INT_LEAST64_MIN = `enum INT_LEAST64_MIN = ( - 9223372036854775807i64 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_INT_LEAST64_MIN); })))
    {
        mixin(enumMixinStr_INT_LEAST64_MIN);
    }
}

static if (!is(typeof(INT_LEAST8_MAX)))
{
    private enum enumMixinStr_INT_LEAST8_MAX = `enum INT_LEAST8_MAX = 12;`;
    static if (is(typeof({ mixin(enumMixinStr_INT_LEAST8_MAX); })))
    {
        mixin(enumMixinStr_INT_LEAST8_MAX);
    }
}

static if (!is(typeof(INT_LEAST16_MAX)))
{
    private enum enumMixinStr_INT_LEAST16_MAX = `enum INT_LEAST16_MAX = 32767;`;
    static if (is(typeof({ mixin(enumMixinStr_INT_LEAST16_MAX); })))
    {
        mixin(enumMixinStr_INT_LEAST16_MAX);
    }
}

static if (!is(typeof(INT_LEAST32_MAX)))
{
    private enum enumMixinStr_INT_LEAST32_MAX = `enum INT_LEAST32_MAX = 2147483647;`;
    static if (is(typeof({ mixin(enumMixinStr_INT_LEAST32_MAX); })))
    {
        mixin(enumMixinStr_INT_LEAST32_MAX);
    }
}

static if (!is(typeof(INT_LEAST64_MAX)))
{
    private enum enumMixinStr_INT_LEAST64_MAX = `enum INT_LEAST64_MAX = 9223372036854775807L;`;
    static if (is(typeof({ mixin(enumMixinStr_INT_LEAST64_MAX); })))
    {
        mixin(enumMixinStr_INT_LEAST64_MAX);
    }
}

static if (!is(typeof(UINT_LEAST8_MAX)))
{
    private enum enumMixinStr_UINT_LEAST8_MAX = `enum UINT_LEAST8_MAX = 0xff;`;
    static if (is(typeof({ mixin(enumMixinStr_UINT_LEAST8_MAX); })))
    {
        mixin(enumMixinStr_UINT_LEAST8_MAX);
    }
}

static if (!is(typeof(UINT_LEAST16_MAX)))
{
    private enum enumMixinStr_UINT_LEAST16_MAX = `enum UINT_LEAST16_MAX = 0xffffu;`;
    static if (is(typeof({ mixin(enumMixinStr_UINT_LEAST16_MAX); })))
    {
        mixin(enumMixinStr_UINT_LEAST16_MAX);
    }
}

static if (!is(typeof(UINT_LEAST32_MAX)))
{
    private enum enumMixinStr_UINT_LEAST32_MAX = `enum UINT_LEAST32_MAX = 0xffffffffu;`;
    static if (is(typeof({ mixin(enumMixinStr_UINT_LEAST32_MAX); })))
    {
        mixin(enumMixinStr_UINT_LEAST32_MAX);
    }
}

static if (!is(typeof(UINT_LEAST64_MAX)))
{
    private enum enumMixinStr_UINT_LEAST64_MAX = `enum UINT_LEAST64_MAX = 0xffffffffffffffffuL;`;
    static if (is(typeof({ mixin(enumMixinStr_UINT_LEAST64_MAX); })))
    {
        mixin(enumMixinStr_UINT_LEAST64_MAX);
    }
}

static if (!is(typeof(INT_FAST8_MIN)))
{
    private enum enumMixinStr_INT_FAST8_MIN = `enum INT_FAST8_MIN = ( - 127i8 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_INT_FAST8_MIN); })))
    {
        mixin(enumMixinStr_INT_FAST8_MIN);
    }
}

static if (!is(typeof(INT_FAST16_MIN)))
{
    private enum enumMixinStr_INT_FAST16_MIN = `enum INT_FAST16_MIN = ( - 2147483647i32 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_INT_FAST16_MIN); })))
    {
        mixin(enumMixinStr_INT_FAST16_MIN);
    }
}

static if (!is(typeof(INT_FAST32_MIN)))
{
    private enum enumMixinStr_INT_FAST32_MIN = `enum INT_FAST32_MIN = ( - 2147483647i32 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_INT_FAST32_MIN); })))
    {
        mixin(enumMixinStr_INT_FAST32_MIN);
    }
}

static if (!is(typeof(INT_FAST64_MIN)))
{
    private enum enumMixinStr_INT_FAST64_MIN = `enum INT_FAST64_MIN = ( - 9223372036854775807i64 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_INT_FAST64_MIN); })))
    {
        mixin(enumMixinStr_INT_FAST64_MIN);
    }
}

static if (!is(typeof(INT_FAST8_MAX)))
{
    private enum enumMixinStr_INT_FAST8_MAX = `enum INT_FAST8_MAX = 12;`;
    static if (is(typeof({ mixin(enumMixinStr_INT_FAST8_MAX); })))
    {
        mixin(enumMixinStr_INT_FAST8_MAX);
    }
}

static if (!is(typeof(INT_FAST16_MAX)))
{
    private enum enumMixinStr_INT_FAST16_MAX = `enum INT_FAST16_MAX = 2147483647;`;
    static if (is(typeof({ mixin(enumMixinStr_INT_FAST16_MAX); })))
    {
        mixin(enumMixinStr_INT_FAST16_MAX);
    }
}

static if (!is(typeof(INT_FAST32_MAX)))
{
    private enum enumMixinStr_INT_FAST32_MAX = `enum INT_FAST32_MAX = 2147483647;`;
    static if (is(typeof({ mixin(enumMixinStr_INT_FAST32_MAX); })))
    {
        mixin(enumMixinStr_INT_FAST32_MAX);
    }
}

static if (!is(typeof(INT_FAST64_MAX)))
{
    private enum enumMixinStr_INT_FAST64_MAX = `enum INT_FAST64_MAX = 9223372036854775807L;`;
    static if (is(typeof({ mixin(enumMixinStr_INT_FAST64_MAX); })))
    {
        mixin(enumMixinStr_INT_FAST64_MAX);
    }
}

static if (!is(typeof(UINT_FAST8_MAX)))
{
    private enum enumMixinStr_UINT_FAST8_MAX = `enum UINT_FAST8_MAX = 0xff;`;
    static if (is(typeof({ mixin(enumMixinStr_UINT_FAST8_MAX); })))
    {
        mixin(enumMixinStr_UINT_FAST8_MAX);
    }
}

static if (!is(typeof(UINT_FAST16_MAX)))
{
    private enum enumMixinStr_UINT_FAST16_MAX = `enum UINT_FAST16_MAX = 0xffffffffu;`;
    static if (is(typeof({ mixin(enumMixinStr_UINT_FAST16_MAX); })))
    {
        mixin(enumMixinStr_UINT_FAST16_MAX);
    }
}

static if (!is(typeof(UINT_FAST32_MAX)))
{
    private enum enumMixinStr_UINT_FAST32_MAX = `enum UINT_FAST32_MAX = 0xffffffffu;`;
    static if (is(typeof({ mixin(enumMixinStr_UINT_FAST32_MAX); })))
    {
        mixin(enumMixinStr_UINT_FAST32_MAX);
    }
}

static if (!is(typeof(UINT_FAST64_MAX)))
{
    private enum enumMixinStr_UINT_FAST64_MAX = `enum UINT_FAST64_MAX = 0xffffffffffffffffuL;`;
    static if (is(typeof({ mixin(enumMixinStr_UINT_FAST64_MAX); })))
    {
        mixin(enumMixinStr_UINT_FAST64_MAX);
    }
}

static if (!is(typeof(INTPTR_MIN)))
{
    private enum enumMixinStr_INTPTR_MIN = `enum INTPTR_MIN = ( - 9223372036854775807i64 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_INTPTR_MIN); })))
    {
        mixin(enumMixinStr_INTPTR_MIN);
    }
}

static if (!is(typeof(INTPTR_MAX)))
{
    private enum enumMixinStr_INTPTR_MAX = `enum INTPTR_MAX = 9223372036854775807L;`;
    static if (is(typeof({ mixin(enumMixinStr_INTPTR_MAX); })))
    {
        mixin(enumMixinStr_INTPTR_MAX);
    }
}

static if (!is(typeof(UINTPTR_MAX)))
{
    private enum enumMixinStr_UINTPTR_MAX = `enum UINTPTR_MAX = 0xffffffffffffffffuL;`;
    static if (is(typeof({ mixin(enumMixinStr_UINTPTR_MAX); })))
    {
        mixin(enumMixinStr_UINTPTR_MAX);
    }
}

static if (!is(typeof(INTMAX_MIN)))
{
    private enum enumMixinStr_INTMAX_MIN = `enum INTMAX_MIN = ( - 9223372036854775807i64 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_INTMAX_MIN); })))
    {
        mixin(enumMixinStr_INTMAX_MIN);
    }
}

static if (!is(typeof(INTMAX_MAX)))
{
    private enum enumMixinStr_INTMAX_MAX = `enum INTMAX_MAX = 9223372036854775807L;`;
    static if (is(typeof({ mixin(enumMixinStr_INTMAX_MAX); })))
    {
        mixin(enumMixinStr_INTMAX_MAX);
    }
}

static if (!is(typeof(UINTMAX_MAX)))
{
    private enum enumMixinStr_UINTMAX_MAX = `enum UINTMAX_MAX = 0xffffffffffffffffuL;`;
    static if (is(typeof({ mixin(enumMixinStr_UINTMAX_MAX); })))
    {
        mixin(enumMixinStr_UINTMAX_MAX);
    }
}

static if (!is(typeof(PTRDIFF_MIN)))
{
    private enum enumMixinStr_PTRDIFF_MIN = `enum PTRDIFF_MIN = ( - 9223372036854775807i64 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_PTRDIFF_MIN); })))
    {
        mixin(enumMixinStr_PTRDIFF_MIN);
    }
}

static if (!is(typeof(PTRDIFF_MAX)))
{
    private enum enumMixinStr_PTRDIFF_MAX = `enum PTRDIFF_MAX = 9223372036854775807L;`;
    static if (is(typeof({ mixin(enumMixinStr_PTRDIFF_MAX); })))
    {
        mixin(enumMixinStr_PTRDIFF_MAX);
    }
}

static if (!is(typeof(SIZE_MAX)))
{
    private enum enumMixinStr_SIZE_MAX = `enum SIZE_MAX = 0xffffffffffffffffuL;`;
    static if (is(typeof({ mixin(enumMixinStr_SIZE_MAX); })))
    {
        mixin(enumMixinStr_SIZE_MAX);
    }
}

static if (!is(typeof(SIG_ATOMIC_MIN)))
{
    private enum enumMixinStr_SIG_ATOMIC_MIN = `enum SIG_ATOMIC_MIN = ( - 2147483647i32 - 1 );`;
    static if (is(typeof({ mixin(enumMixinStr_SIG_ATOMIC_MIN); })))
    {
        mixin(enumMixinStr_SIG_ATOMIC_MIN);
    }
}

static if (!is(typeof(SIG_ATOMIC_MAX)))
{
    private enum enumMixinStr_SIG_ATOMIC_MAX = `enum SIG_ATOMIC_MAX = 2147483647;`;
    static if (is(typeof({ mixin(enumMixinStr_SIG_ATOMIC_MAX); })))
    {
        mixin(enumMixinStr_SIG_ATOMIC_MAX);
    }
}

static if (!is(typeof(WCHAR_MIN)))
{
    private enum enumMixinStr_WCHAR_MIN = `enum WCHAR_MIN = 0x0000;`;
    static if (is(typeof({ mixin(enumMixinStr_WCHAR_MIN); })))
    {
        mixin(enumMixinStr_WCHAR_MIN);
    }
}

static if (!is(typeof(WCHAR_MAX)))
{
    private enum enumMixinStr_WCHAR_MAX = `enum WCHAR_MAX = 0xffff;`;
    static if (is(typeof({ mixin(enumMixinStr_WCHAR_MAX); })))
    {
        mixin(enumMixinStr_WCHAR_MAX);
    }
}

static if (!is(typeof(WINT_MIN)))
{
    private enum enumMixinStr_WINT_MIN = `enum WINT_MIN = 0x0000;`;
    static if (is(typeof({ mixin(enumMixinStr_WINT_MIN); })))
    {
        mixin(enumMixinStr_WINT_MIN);
    }
}

static if (!is(typeof(WINT_MAX)))
{
    private enum enumMixinStr_WINT_MAX = `enum WINT_MAX = 0xffff;`;
    static if (is(typeof({ mixin(enumMixinStr_WINT_MAX); })))
    {
        mixin(enumMixinStr_WINT_MAX);
    }
}
static if (!is(typeof(_CRT_PACKING)))
{
    private enum enumMixinStr__CRT_PACKING = `enum _CRT_PACKING = 8;`;
    static if (is(typeof({ mixin(enumMixinStr__CRT_PACKING); })))
    {
        mixin(enumMixinStr__CRT_PACKING);
    }
}
static if (!is(typeof(_VCRUNTIME_DISABLED_WARNINGS)))
{
    private enum enumMixinStr__VCRUNTIME_DISABLED_WARNINGS = `enum _VCRUNTIME_DISABLED_WARNINGS = 4514 4820 ;`;
    static if (is(typeof({ mixin(enumMixinStr__VCRUNTIME_DISABLED_WARNINGS); })))
    {
        mixin(enumMixinStr__VCRUNTIME_DISABLED_WARNINGS);
    }
}
static if (!is(typeof(_VCRT_COMPILER_PREPROCESSOR)))
{
    private enum enumMixinStr__VCRT_COMPILER_PREPROCESSOR = `enum _VCRT_COMPILER_PREPROCESSOR = 1;`;
    static if (is(typeof({ mixin(enumMixinStr__VCRT_COMPILER_PREPROCESSOR); })))
    {
        mixin(enumMixinStr__VCRT_COMPILER_PREPROCESSOR);
    }
}
static if (!is(typeof(_CRT_BEGIN_C_HEADER)))
{
    private enum enumMixinStr__CRT_BEGIN_C_HEADER = `enum _CRT_BEGIN_C_HEADER =
                                                                                                                             ;`;
    static if (is(typeof({ mixin(enumMixinStr__CRT_BEGIN_C_HEADER); })))
    {
        mixin(enumMixinStr__CRT_BEGIN_C_HEADER);
    }
}

static if (!is(typeof(_CRT_END_C_HEADER)))
{
    private enum enumMixinStr__CRT_END_C_HEADER = `enum _CRT_END_C_HEADER =
                                                                                                         ;`;
    static if (is(typeof({ mixin(enumMixinStr__CRT_END_C_HEADER); })))
    {
        mixin(enumMixinStr__CRT_END_C_HEADER);
    }
}

static if (!is(typeof(_HAS_EXCEPTIONS)))
{
    private enum enumMixinStr__HAS_EXCEPTIONS = `enum _HAS_EXCEPTIONS = 1;`;
    static if (is(typeof({ mixin(enumMixinStr__HAS_EXCEPTIONS); })))
    {
        mixin(enumMixinStr__HAS_EXCEPTIONS);
    }
}
static if (!is(typeof(__CLRCALL_OR_CDECL)))
{
    private enum enumMixinStr___CLRCALL_OR_CDECL = `enum __CLRCALL_OR_CDECL = __cdecl;`;
    static if (is(typeof({ mixin(enumMixinStr___CLRCALL_OR_CDECL); })))
    {
        mixin(enumMixinStr___CLRCALL_OR_CDECL);
    }
}

static if (!is(typeof(__CLRCALL_PURE_OR_CDECL)))
{
    private enum enumMixinStr___CLRCALL_PURE_OR_CDECL = `enum __CLRCALL_PURE_OR_CDECL = __cdecl;`;
    static if (is(typeof({ mixin(enumMixinStr___CLRCALL_PURE_OR_CDECL); })))
    {
        mixin(enumMixinStr___CLRCALL_PURE_OR_CDECL);
    }
}

static if (!is(typeof(__CRTDECL)))
{
    private enum enumMixinStr___CRTDECL = `enum __CRTDECL = __cdecl;`;
    static if (is(typeof({ mixin(enumMixinStr___CRTDECL); })))
    {
        mixin(enumMixinStr___CRTDECL);
    }
}

static if (!is(typeof(_VCRT_NOALIAS)))
{
    private enum enumMixinStr__VCRT_NOALIAS = `enum _VCRT_NOALIAS = __declspec ( noalias );`;
    static if (is(typeof({ mixin(enumMixinStr__VCRT_NOALIAS); })))
    {
        mixin(enumMixinStr__VCRT_NOALIAS);
    }
}

static if (!is(typeof(_VCRT_RESTRICT)))
{
    private enum enumMixinStr__VCRT_RESTRICT = `enum _VCRT_RESTRICT = __declspec cast( restrict );`;
    static if (is(typeof({ mixin(enumMixinStr__VCRT_RESTRICT); })))
    {
        mixin(enumMixinStr__VCRT_RESTRICT);
    }
}

static if (!is(typeof(_VCRT_ALLOCATOR)))
{
    private enum enumMixinStr__VCRT_ALLOCATOR = `enum _VCRT_ALLOCATOR = __declspec ( allocator );`;
    static if (is(typeof({ mixin(enumMixinStr__VCRT_ALLOCATOR); })))
    {
        mixin(enumMixinStr__VCRT_ALLOCATOR);
    }
}
static if (!is(typeof(_WConst_return)))
{
    private enum enumMixinStr__WConst_return = `enum _WConst_return = ;`;
    static if (is(typeof({ mixin(enumMixinStr__WConst_return); })))
    {
        mixin(enumMixinStr__WConst_return);
    }
}
static if (!is(typeof(_UNALIGNED)))
{
    private enum enumMixinStr__UNALIGNED = `enum _UNALIGNED = __unaligned;`;
    static if (is(typeof({ mixin(enumMixinStr__UNALIGNED); })))
    {
        mixin(enumMixinStr__UNALIGNED);
    }
}

static if (!is(typeof(_STL_LANG)))
{
    private enum enumMixinStr__STL_LANG = `enum _STL_LANG = 0L;`;
    static if (is(typeof({ mixin(enumMixinStr__STL_LANG); })))
    {
        mixin(enumMixinStr__STL_LANG);
    }
}

static if (!is(typeof(_HAS_CXX17)))
{
    private enum enumMixinStr__HAS_CXX17 = `enum _HAS_CXX17 = 0;`;
    static if (is(typeof({ mixin(enumMixinStr__HAS_CXX17); })))
    {
        mixin(enumMixinStr__HAS_CXX17);
    }
}

static if (!is(typeof(_HAS_CXX20)))
{
    private enum enumMixinStr__HAS_CXX20 = `enum _HAS_CXX20 = 0;`;
    static if (is(typeof({ mixin(enumMixinStr__HAS_CXX20); })))
    {
        mixin(enumMixinStr__HAS_CXX20);
    }
}

static if (!is(typeof(_HAS_CXX23)))
{
    private enum enumMixinStr__HAS_CXX23 = `enum _HAS_CXX23 = 0;`;
    static if (is(typeof({ mixin(enumMixinStr__HAS_CXX23); })))
    {
        mixin(enumMixinStr__HAS_CXX23);
    }
}

static if (!is(typeof(_HAS_NODISCARD)))
{
    private enum enumMixinStr__HAS_NODISCARD = `enum _HAS_NODISCARD = 0;`;
    static if (is(typeof({ mixin(enumMixinStr__HAS_NODISCARD); })))
    {
        mixin(enumMixinStr__HAS_NODISCARD);
    }
}

static if (!is(typeof(_MSVC_CONSTEXPR)))
{
    private enum enumMixinStr__MSVC_CONSTEXPR = `enum _MSVC_CONSTEXPR = [ [ msvc :: constexpr ] ];`;
    static if (is(typeof({ mixin(enumMixinStr__MSVC_CONSTEXPR); })))
    {
        mixin(enumMixinStr__MSVC_CONSTEXPR);
    }
}
