class XComTraceManager extends Actor
    native(Core)
    notplaceable;

enum EXComTraceType
{
    eXTrace_Screen,
    eXTrace_UnitVisibility,
    eXTrace_UnitVisibility_IgnoreTeam,
    eXTrace_UnitVisibility_IgnoreAllButTarget,
    eXTrace_CameraObstruction,
    eXTrace_World,
    eXTrace_AllActors,
    eXTrace_NoPawns,
    eXTrace_MAX
};

var EXComTraceType m_eCurrentType;
var Object.ETeam m_eIgnoreTeam;
var Actor m_Target;

native function Actor XTrace(EXComTraceType eType, out Vector HitLocation, out Vector HitNormal, Vector TraceEnd, optional Vector TraceStart, optional Vector Extent, optional out TraceHitInfo HitInfo, optional bool bDrawDebugLine, optional Object.ETeam eIgnoreTeam, optional Actor Target);
