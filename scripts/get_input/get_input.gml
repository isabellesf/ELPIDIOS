function get_input() {
	//Movimentação
	key_up = keyboard_check(vk_up);
	key_down = keyboard_check(vk_down);
	key_right = keyboard_check(vk_right);
	key_left = keyboard_check(vk_left);

	xaxis = (key_right - key_left);
	yaxis = (key_down - key_up);

}
