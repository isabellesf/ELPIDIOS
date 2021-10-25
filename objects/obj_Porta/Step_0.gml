/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(objPlayer) < 5 && global.verificar_porta <3 ){
	
	if(myTextbox == noone){
	myTextbox = instance_create_layer(x,y, "Text", obj_textbox);
	myTextbox.text = "opa, voce nao pegou todas as folhas :( e sim, esta em comic sans";
}}else {
    instance_destroy(myTextbox);
}


