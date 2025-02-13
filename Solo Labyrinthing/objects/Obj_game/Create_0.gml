timer = 20 * room_speed;
is_moving = false;

if room = rTitleScreen{
	audio_stop_all()
	audio_play_sound(Snd_menu,1,true)
}

if room = Level1{
	audio_stop_all()
	audio_play_sound(Snd_level1,1,true)
}

if room = Level2{
	audio_stop_all()
	audio_play_sound(Snd_level2,1,true)
}

if room = rEnd2{
	audio_stop_all()
	audio_play_sound(Snd_end,1,true)
}

if room = rEnd1{
	audio_stop_all()
	audio_play_sound(Snd_death,1,false)
	audio_play_sound(Snd_end,1,true)
}