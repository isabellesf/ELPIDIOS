open = false;

guiHolderWidth = sprite_get_width(sInventory);
guiHolderPosX = (view_get_wport(0) / 2) - (guiHolderWidth / 2);
guiHolderPad = 5;
guiHolderPosY = 0;
guiHolderSlotOffsetX = 44 + guiHolderPad;

inv_Initialize();