draw_set_font(Font_time); 

draw_set_color(c_white);
if (timer < 20 * room_speed) {
    draw_set_color(c_red);
}

if room = Level1 ||room = Level2{
	draw_text(20, 20, "Temps restant : " + string(ceil(timer / room_speed)) + "s");
}

draw_set_color(c_white);