class XComAlienPod extends Actor;

var() bool bCommanderPod;

auto state Dormant
{
Begin:
    stop;                
}