/// @description Insert description here
// You can write your code in this editor
if(global.Xcerto == 1){
	room_goto(Fase_2)
}else{ 
	global.vida --; 
	room_goto(Fase_1)
}