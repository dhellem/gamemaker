instance_destroy()
effect_create_above(ef_firework,x,y,0.1,c_aqua)

if (instance_exists(Obj_game)) {
    Obj_game.timer += 10 * room_speed; 
}