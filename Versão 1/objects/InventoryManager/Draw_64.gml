if (open = true){
draw_sprite(sInventory, -1, guiHolderPosX, 0);

	for(var i = 0; i < MAX_ACTIVE_INV_ITENS; i++)
	{
		itemDefIndex = inventory[i];
	
		if(itemDefIndex != ItemType.none)
		{
			draw_sprite(itemDefinitions[itemDefIndex, ItemProprieties.sprite], -1, (guiHolderPosX + guiHolderPad) + (guiHolderSlotOffsetX * i), guiHolderPosY + guiHolderPad)
		
			//Revolução Francesa
			if keyboard_check(ord("1")) 
			{
				if (inventory[i] == ItemType.Papel_1)
				{
					draw_sprite(Desc_1, 1, guiHolderPosX,0);
				}
			}
		}
	}
}