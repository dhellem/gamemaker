key_left = keyboard_check(ord("Q"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("Z"));
key_down = keyboard_check(ord("S"));

var move_horizontale = key_right - key_left;
var move_vertical = key_down - key_up;

horizontale_speed = move_horizontale * move_speed;
vertical_speed = move_vertical * move_speed;

if (!place_meeting(x + horizontale_speed, y, Obj_wall)) {
    x += horizontale_speed;
}
if (!place_meeting(x, y + vertical_speed, Obj_wall)) {
    y += vertical_speed;
}

if (place_meeting(x, y, Obj_door)) {
    x = xprevious;
    y = yprevious;
}

if (horizontale_speed == 0 && vertical_speed == 0) {
    image_index = 0;
    image_speed = 0;
} else {
    image_speed = 2; 
}

if (key_down) {
    sprite_index = sprite_perso_walk_front;
}
if (key_up) {
    sprite_index = sprite_perso_walk_backward;
}
if (key_left) {
    sprite_index = sprite_perso_walk_left;
}
if (key_right) {
    sprite_index = sprite_perso_walk_right;
}

if key_right||key_left||key_up||key_down{
	Obj_game.is_moving = true;
}else{
	Obj_game.is_moving = false;
}