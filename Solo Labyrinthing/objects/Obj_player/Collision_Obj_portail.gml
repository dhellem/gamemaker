instance_destroy()
effect_create_above(ef_explosion,x,y,0.1,c_dkgray);
global.level1_finished = true;
ini_open("sauvegarde.ini");
ini_write_string("progression", "level1", "true");
ini_close()
room_goto_next();