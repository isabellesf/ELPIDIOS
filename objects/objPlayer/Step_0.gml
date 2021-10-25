// script de movimentação
script_execute(move_state);



//personagem piscando

if alarm[0] > 0 {
     if image_alpha >=1 {
	 alfa_hit -= -0.05;
	 }else if image_alpha <=0{
	   alfa_hit = 0.05;
	 }
	 image_alpha += alfa_hit;
}else {
      image_alpha = 1;
}

