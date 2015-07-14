class XGBattleDesc extends Actor
	dependsOn(XGGameData);

var string m_strMapName;
var int m_iMissionType;
var TAlienSquad m_kAlienSquad;
var XGGameData.EShipType m_eUFOType;
var XGGameData.EFCMission m_eCouncilType;

event bool ShouldSpawnMeldCanisters()
{
}
