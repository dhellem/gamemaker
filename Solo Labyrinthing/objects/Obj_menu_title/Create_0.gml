game_set_speed(60,gamespeed_fps)

enum b_state{
	create,
	normal,
	pressed,
	over,
	destroy
}

var _y = room_height /2;
var _x = room_width /2;


instance_create_layer(_x, _y +200, "Pickups", Obj_btn_play)
instance_create_layer(_x, _y +300, "Pickups", Obj_btn_exit)
instance_create_layer(_x -600, _y +300, "Pickups", Obj_logo)
instance_create_layer(_x, _y, "Pickups", Obj_menu_background1)