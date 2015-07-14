class XGAIPlayer extends XGPlayer
    native(AI)
    notplaceable;

var array<XGUnit> m_arrVisibleCache;

native simulated function bool IsInBadArea(Vector vLoc, XGUnitNativeBase kUnitToIgnore, optional bool bIgnoreSquaddies = false, optional bool bMeleeOnl = false, optional bool bDebugLog = false, optional bool bIgnoreAoE = false);

