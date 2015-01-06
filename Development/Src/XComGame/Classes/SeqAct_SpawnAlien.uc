class SeqAct_SpawnAlien extends SequenceAction
    dependsOn(XGGameData);

var() XGGameData.EPawnType ForceAlienType;
var() bool bEnabled;
var() bool bUseOverwatch;
var() bool bTriggerOverwatch;
var bool bPlaySound;
var() bool bRevealSpawn;
var() bool bSpawnImmediately;
var() int iDropHeight;
var() SoundCue kAdditionalSound;
var XGUnit SpawnedUnit;
var XGAISpawnMethod_DropIn m_kDropIn;

event Activated()
{
}
