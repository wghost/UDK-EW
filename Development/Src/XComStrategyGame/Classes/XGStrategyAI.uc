class XGStrategyAI extends XGStrategyActor
    config(GameData)
    notplaceable;

function Init()
{
}

function int GetMonth()
{
}

function ECharacter GetCommanderType()
{
}

function TAlienSquad DetermineFirstMissionSquad()
{
}

function TAlienSquad DetermineAbductionSquad(int iMissionDiff)
{
}

function TAlienSquad DetermineUFOSquad(XGShip_UFO kUFO, bool bLanded, optional EShipType eShip = 0)
{
}

function TAlienSquad DetermineTerrorSquad()
{
}

function TAlienSquad DetermineSpecialMissionSquad(ECharacter eChar, EFCMission eMission, bool bAssault)
{
}
