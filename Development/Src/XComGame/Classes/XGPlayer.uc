class XGPlayer extends XGPlayerNativeBase
    native(Core)
    notplaceable;

simulated function XGSquad GetSquad()
{
}

simulated function XGUnit GetNearestEnemy(Vector vPoint, optional out float fClosestDist, optional bool bUseVisibleList, optional bool bConsiderCiviliansEnemies)
{
}