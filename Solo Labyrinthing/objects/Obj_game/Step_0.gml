if (timer > 0 ){
     if (is_moving) {  
        timer -= 1;
	 }
} else {
    show_message("Temps écoulé ! Tu as perdu !");
    room_restart(); 
}