class XComWorldData extends Object
    native(Core);

struct native XComCoverPoint
{
    var int X;
    var int Y;
    var int Z;
    var Vector TileLocation;
    var Vector CoverLocation;
    var int Flags;
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

native function float GetFloorZForPosition(const out Vector Position, optional bool bUnlimitedSearch);

native function GetTileCoordinatesFromPosition(const out Vector Position, out int TileX, out int TileY, out int TileZ);

native function bool IsTileOccupied(int X, int Y, int Z);
