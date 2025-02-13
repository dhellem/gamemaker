if (timer > 0 ){
     if (is_moving) {  
        timer -= 1;
	 }
} else {
    room_goto(rEnd1);
}