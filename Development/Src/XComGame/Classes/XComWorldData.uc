class XComWorldData extends Object
    native(Core);

const WORLD_StepSize = 96.0f;
const WORLD_StepSizeSquared = 9216.0f;
const WORLD_StepSize_2D_Diagonal = 135.7645f;
const WORLD_StepSize_2DZ_Diagonal = 115.3776f;
const WORLD_StepSize_3D_Diagonal = 150.0933f;
const WORLD_HalfStepSize = 48.0f;
const WORLD_FloorHeight = 64.0f;
const WORLD_HalfFloorHeight = 32.0f;
const WORLD_BaseHeight = 24.0f;
const WORLD_PartialRadius = 20.0f;

enum ETraversalType
{
    eTraversal_None,
    eTraversal_Normal,
    eTraversal_ClimbOver,
    eTraversal_ClimbOnto,
    eTraversal_ClimbLadder,
    eTraversal_DropDown,
    eTraversal_Grapple,
    eTraversal_Landing,
    eTraversal_BreakWindow,
    eTraversal_KickDoor,
    eTraversal_WallClimb,
    eTraversal_JumpUp,
    eTraversal_Ramp,
    eTraversal_BreakWall,
    eTraversal_Unreachable,
    eTraversal_MAX
};

struct native XComCoverPoint
{
    var int X;
    var int Y;
    var int Z;
    var Vector TileLocation;
    var Vector CoverLocation;
    var int Flags;
};

struct native TTile
{
    var int X;
    var int Y;
    var int Z;
};

struct native XComInteractPoint
{
    var Vector Location;
    var Rotator Rotation;
    var XComInteractiveLevelActor InteractiveActor;
    var name InteractSocketName;
    var int ModifyTileStaticFlags;

    structdefaultproperties
    {
        Location=(X=0.0,Y=0.0,Z=0.0)
        Rotation=(Pitch=0,Yaw=0,Roll=0)
        InteractiveActor=none
        InteractSocketName=None
        ModifyTileStaticFlags=0
    }
};

var Box WorldBounds;
var int NumX;
var int NumY;
var int NumZ;
var int NumTiles;
var XComLevelVolume Volume;

native static function XComWorldData GetWorldData();

native function bool IsAdjacentTileVisible(const out Vector FromLocation, const out Vector ToLocation);

native function Vector FindClosestValidLocation(const Vector TestLocation, bool bAllowFlying, bool bPrioritizeZLevel, optional bool bAvoidNoSpawnZones);

native function Vector GetValidSpawnLocation(const out Vector InitialPt);

native function bool IsPositionOnFloor(const out Vector Position);

native function bool IsPositionOnFloorAndValidDestination(const out Vector Position);

native function Vector GetPositionFromTileCoordinates(int TileX, int TileY, int TileZ);

native function bool GetFloorTileForPosition(const out Vector Position, out int TileX, out int TileY, out int TileZ, optional bool bUnlimitedSearch);

native function int GetFloorTileZ(int TileX, int TileY, int TileZ, optional bool bUnlimitedSearch);

native function float GetFloorZForPosition(const out Vector Position, optional bool bUnlimitedSearch);

native function GetTileCoordinatesFromPosition(const out Vector Position, out int TileX, out int TileY, out int TileZ);

native function float PathLength(const out TTile kStartTile, const out TTile kEndTile);

native function bool IsInNoSpawnZone(const out Vector vLoc, optional bool bCivilian = false, optional bool bLogFailures = false);

native function bool IsTileOccupied(int X, int Y, int Z);

native function bool GetCoverPointsInPathingRange(out array<XComCoverPoint> CoverPoints);

native function bool GetCoverPoints(const Vector InPoint, const float Radius, const float Height, out array<XComCoverPoint> CoverPoints, optional bool bSortedByDist = false);

native function bool GetClosestCoverPoint(const Vector InPoint, const float Radius, out XComCoverPoint CoverPoint, optional bool bOnlyUnblockedTiles = false, optional bool bAvoidNoSpawnZones = false);

native function bool GetCoverPoint(const Vector InPoint, out XComCoverPoint CoverPoint);

native function bool GetInteractionPoints(const Vector InPoint, const float Radius, const float Height, out array<XComInteractPoint> InteractPoints);

native function bool GetClosestInteractionPoint(const Vector InPoint, const float Radius, const float Height, out XComInteractPoint InteractPoint);

native function RemoveInteractionPoints(XComInteractiveLevelActor inActor);

native function bool WorldTrace(const out Vector StartLocation, const out Vector EndLocation, out Vector HitLocation, out Vector HitNormal, out Actor HitActor, optional int CheckType = 4);

native function RebuildTileDataExtents(const out Vector InPoint, const out Vector Extents);

native function RebuildTileData(const out Vector InPoint, const float ExtentXY, const float ExtentZ);

native function bool IsRebuildingTiles();

native function BuildWorldData(XComLevelVolume LevelVolume);

native function SetRebuildTileProcessRate(int NumTilesPerUpdate);
