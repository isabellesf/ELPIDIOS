///@desc Adidiona uma definição ao item
///@param type Type
///@param spriteIndex Index to sprite
///@parm amount Quantidade
///@param script Script
 function inv_AddItemDef (argument0, argument1, argument2, argument3){
var _typeOfItem = argument0;
var _sprite = argument1;
var _name = argument2;
var _amount = argument3;

itemDefinitions[_typeOfItem, ItemProprieties.sprite] = _sprite;
itemDefinitions[_typeOfItem, ItemProprieties.name] = _name;
itemDefinitions[_typeOfItem, ItemProprieties.amount] = _amount;
 }