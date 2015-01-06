class XGUnitNativeBase extends Actor
	dependsOn(XGGameData)
	native(Unit);

var XGCharacter m_kCharacter;
var XGAIBehavior m_kBehavior;

simulated function XGCharacter GetCharacter()
{
}

native simulated event bool IsAliveAndWell(optional bool bIgnoreStrangle);

native simulated function XGAbility FindAbility(int iType, XGUnit kTarget);

native final simulated function bool IsInCover();

native final simulated function XComCoverPoint GetCoverPoint();

simulated function bool IsInMeleeRange(XGUnit kEnemy, optional Vector vUnitLoc, optional bool bAllowDiagonals)
{
}

simulated function XGGameData.EPawnType GetPawnType()
{
}

simulated function XComUnitPawn GetPawn()
{
}

