function inv_AddItem(argument0){
var _type = argument0;
var IndexAddAt = -2;

if (array_find_index(InventoryManager.inventory,_type) == -1)
{
	IndexAddAt = array_replace_value(InventoryManager.inventory, ItemType.none, _type);
}

if(IndexAddAt != -1)
InventoryManager.itemDefinitions[_type, ItemProprieties.amount] += 1;

return (IndexAddAt != -1);
}