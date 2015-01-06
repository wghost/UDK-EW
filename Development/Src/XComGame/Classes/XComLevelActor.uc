class XComLevelActor extends StaticMeshActor
    hidecategories(Navigation)
    native(Level);

struct native VisibilityBlocking
{
    var() const bool bBlockUnitVisibility;
};

var() const editconst export editinline XComFloorComponent FloorComponent;
var() VisibilityBlocking VisibilityBlockingData;
var() const bool HideableWhenBlockingObjectOfInterest;
var() const bool bIgnoreFor3DCursorCollision;
var() LinearColor TintColor;
var() Actor HidingPartner;
