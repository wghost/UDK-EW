class XGUnitNativeBase extends Actor
	dependsOn(XGGameData)
	native(Unit);

var XGCharacter m_kCharacter;
var XGAIBehavior m_kBehavior;
var array<XComInteractPoint> m_arrInteractPoints;

simulated function XGCharacter GetCharacter()
{
}

native simulated event bool IsAliveAndWell(optional bool bIgnoreStrangle);

native simulated function XGAbility FindAbility(int iType, XGUnit kTarget);

native final simulated function bool IsInCover();

native final simulated function XComCoverPoint GetCoverPoint();

native static simulated function bool DoesFlankCover(Vector PointA, XComCoverPoint kCover);

native simulated event Vector GetLocation();

simulated function bool IsInMeleeRange(XGUnit kEnemy, optional Vector vUnitLoc, optional bool bAllowDiagonals)
{
}

simulated function XGGameData.EPawnType GetPawnType()
{
}

simulated function XComUnitPawn GetPawn()
{
}

simulated event bool IsAlien()
{
}

simulated function bool IsExalt()
{
}

simulated function bool IsATank()
{
}

simulated function bool IsAugmented()
{
}

native simulated function bool IsPanicking();

native simulated function bool IsPanicked();
