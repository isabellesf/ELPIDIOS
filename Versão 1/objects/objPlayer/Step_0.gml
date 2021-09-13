var esq = keyboard_check(vk_left);
var dire = keyboard_check(vk_right);
var cima = keyboard_check(vk_up);
var baixo = keyboard_check(vk_down);

x+= (dire - esq)*vel;
y+= (baixo - cima)*vel;

//colisão horizontal 

if (place_meeting(x + vel_h, y, objParede)){

    while(!place_meeting(x + sign(vel_h), y, objParede))
	{
		x += sign(vel_h);
	}
	vel_h = 0;
}

x += vel_h;

//colisão vertical 

if (place_meeting(x, y + vel_v, objParede)){

    while(!place_meeting(x, y + sign(vel_v), objParede))
	{
		y += sign(vel_v);
	}
	vel_v = 0;
}

y += vel_v;

//controlando animação

image_speed=0.5;
 
if(vel_h == 0 && vel_v == 0)
{
	image_speed = 0;
    image_index=0;
}

//para os lados 

if(vel_h > 0){
	sprite_index = sprt_direita;
}
else if (vel_h < 0)
{
	sprite_index = sprt_esquerda;
}

// para cima e para baixo
if(vel_v > 0){
	sprite_index = sprt_frente;
}
else if (vel_v < 0)
{
	sprite_index = sprt_costas;
}
