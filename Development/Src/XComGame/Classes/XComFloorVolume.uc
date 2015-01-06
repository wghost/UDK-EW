class XComFloorVolume extends Volume
    hidecategories(Navigation,Movement,Display,Object)
    native(Level);

enum EFloorVolumeType
{
    eFloor_Default,
    eFloor_Stair,
    eFloor_Invalid_MoveCursorUp,
    eFloor_Invalid_MoveCursorDown,
    eFloor_MAX
};

var() bool m_bUseForBuildingReveal;
var() bool m_bCanHideBuildingIfBlockingVisibility;
var() bool m_bDisableCutout;
var() bool m_bNonEnterableBuildingPiece;
var() float m_FloorCursorUpperZFactor;
var() XComFloorVolume.EFloorVolumeType m_FloorVolumeType;
var() array<Actor> m_aInclusionActors;
var() array<Actor> m_aExclusionActors;
var() XComLevelActor m_kProxyGeometry;
var() editconst int FloorNumber;
