if pressed {
	if global.level1_finished == true {
		room_goto(Level2);
	} else {
		room_goto(rLevelSelection)
	}
}