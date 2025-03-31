if pressed {
	ini_open("sauvegarde.ini");
	ini_write_string("progression", "level1", "false");
	ini_close();
	room_goto(rLevelSelection)
}