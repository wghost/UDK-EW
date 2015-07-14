class XComInteractiveLevelActor extends XComDestructibleSkeletalMeshActor
    native(Destruction);

enum EIconSocket
{
    XGDOOR_Icon,
    XGWINDOW_Icon,
    XGBUTTON_Icon,
    EIconSocket_MAX
};

var EIconSocket IconSocket;
var name ActiveSocketName;
var bool bWasTouchActivated;

function OnLoadInteract()
{
}

simulated function OnDisableInteractiveActor()
{
}

simulated function OnEnableInteractiveActor()
{
}

simulated function bool CanInteract(XGUnit InUnit, name SocketName)
{
}

native simulated function bool IsDoor();
