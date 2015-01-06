class XComMapManager extends Object
    dependsOn(XGGameData)
    native(Core)
    config(Maps);

struct native StreamMapData
{
    var string MapName;
    var Vector Loc;
    var Rotator Rot;
};

struct native XComMapMetaData
{
    var name MapFamily;
    var init string Name;
    var init string DisplayName;
    var XGGameData.EMissionType MissionType;
    var bool bInRotation;
    var XGGameData.EMissionTime TimeOfDay;
    var XGGameData.EShipType ShipType;
    var XGGameData.EMissionRegion eRegion;
    var XGGameData.EFCMissionType CouncilType;
    var bool NewMap;
    var float InitialChance;
    var float InitialGain;
    var XGGameData.ECharacter DynamicAliens[2];
    var init array<init StreamMapData> StreamingMaps;
    var int PlayCount;
    var int FamilyID;
    var float Gain;
    var float Chance;
};

// Export UXComMapManager::execGetCurrentMapMetaData(FFrame&, void* const)
native static simulated function XComMapMetaData GetCurrentMapMetaData();

