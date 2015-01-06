class XGAIBehavior extends Actor
	dependsOn(XComWorldData);

struct native ai_cover_score
{
    var XComCoverPoint kCover;
    var Vector vLoc;
    var int nE;
    var int nF;
    var int Id;
    var int iA;
    var int iR;
    var int iC;
    var int iV;
    var int IP;
    var int iO;
    var int iB;
    var int iScore;
    var bool bTeamAttackFlankPoint;
    var bool bUseFlightPathing;
};

var bool m_bShouldIgnoreCover;
var bool m_bCanIgnoreCover;
var bool m_bIgnoreOverwatchers;
var XGUnit m_kUnit;
var XGAIPlayer m_kPlayer;
var float m_fDistFromEnemy;

function Init(XGUnit kUnit)
{
}

simulated function SetBehavior(XComSpawnPoint_Alien kSpawnPoint)
{
}

simulated function bool IsValidPathDestination(Vector vLoc, optional bool bSkipCache, optional bool bCanDash)
{
}

simulated function bool IsInMeleeRange(optional out XGUnitNativeBase kNearest)
{
}

simulated function float GetMaxPathDistance()
{
}

simulated function bool IsInBadArea(Vector vLoc, optional bool bDebugLog)
{
}

auto state Inactive
{
}
