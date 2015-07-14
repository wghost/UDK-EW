class XGBattle extends Actor
	DependsOn(XGGameData);

var XGBattleDesc m_kDesc;
var XGLevel m_kLevel;

simulated function int GetSpawnGroup(optional out name groupTag)
{
}

function XGPlayer GetAIPlayer()
{
}


function DoWorldDataRebuild(optional bool bUseIncreasedRateLimit)
{
}

function int STAT_GetStat(ERecapStats eStat)
{
}

function int STAT_AddStat(ERecapStats eStat, int iValue)
{
}

function int STAT_SetStat(ERecapStats eStat, int iValue)
{
}
