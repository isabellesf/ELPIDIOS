function move_state() {

#region Movimentação

	/* Serve para chamar o outro script, assim
	não precisamos digitar todo código novamente */

	script_execute(get_input);

	//Movimentação
	xaxis = (key_right - key_left);
	yaxis = (key_down - key_up);

	//Indica a direção que o jogador virou
	var dir = point_direction(0, 0, xaxis, yaxis)

	//Length
	if (xaxis == 0) and (yaxis == 0)
	{
		len = 0;
	}
	else
	{
		len = spd;
	}

	//Variaveis de velocidade 
	hspd = lengthdir_x(len, dir);
	vspd = lengthdir_y(len, dir);

#endregion

	//Controle de sprite

	image_speed = sign(len)*.5;
	if (len == 0) image_index = 0;

	//vertical sprite
	if (vspd > 0)
	{
		sprite_index = sprt_player_frente
	}
	else if(vspd < 0)
	{
		sprite_index = sprt_player_costas
	}

	//Horizontal sprite
	if (hspd > 0)
	{
		sprite_index = sprt_player_direita
	}
	else if (hspd < 0)
	{
		sprite_index = sprt_player_esquerda
	}


	//Colisão Porta 


#region Collision
	//Horizontal Collision 
	if place_meeting(x+hspd, y, obj_parede)
	{
		while !place_meeting(x+hspd, y, obj_parede)
		{
			x += sign(hspd)
		}
	hspd = 0;
	}

	x += hspd;

	//Vertical Collision
	if place_meeting(x, y+vspd, obj_parede)
	{
		while !place_meeting(x, y+vspd, obj_parede)
		{
			x += sign(vspd)
		}
	vspd = 0;
	}
	y += vspd;
#endregion

}