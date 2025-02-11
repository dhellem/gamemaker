key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

var move_horizontale = key_right - key_left;
horizontale_speed = move_horizontale * move_speed;

var move_vertical = key_down - key_up;
vertical_speed = move_vertical * move_speed;

if key_right||key_left{
	x+=horizontale_speed
}else if key_up||key_down {
	y+= vertical_speed	
}

if horizontale_speed = 0 && vertical_speed = 0{
	image_index = 0
	image_speed = 0
}else{
	image_speed = 2
}

if key_down{
	sprite_index = Sprite_perso_walk_front
}