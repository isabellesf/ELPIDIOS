if (place_meeting(x, y, obj_personagem)){
	if( myTextbox == noone){
		myTextbox = instance_create_layer(x,y, "papel", obj_textbox);
		myTextbox.texto = "texto teste 5";
	}
} else {
if(myTextbox != noone){
instance_destroy(myTextbox);
myTextbox = noone;}
}