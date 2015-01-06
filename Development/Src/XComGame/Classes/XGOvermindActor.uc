class XGOvermindActor extends Actor
    hidecategories(Navigation)
    native(AI)
    notplaceable;

const TileSize = 96.0f;
const SectionSize = 10.0f;

struct native TMapSection
{
    var int iRow;
    var int iColumn;
    var Vector vCenter;
    var TRect m_kRect;
};

function TRect ScaleRect(TRect kRect, float fScale)
{
}
