class XComBuildingVolume extends Volume
    native(Level);

struct native ExternalMeshHidingGroup
{
    var() string GroupName;
    var() bool bEnabled;
    var() array<Actor> m_aActors;
};

struct native Floor
{
    var() init array<init XComFloorVolume> FloorVolumes;
    var() array<string> ExternalMeshGroupNames;
};

var() init array<init Floor> Floors;
var() array<ExternalMeshHidingGroup> ExternalMeshGroups;
var() bool IsUfo;
var() bool IsDropShip;
var() bool IsInside;
var() bool m_bAllowBuildingReveal;
var() bool m_bIsInternalBuilding;
