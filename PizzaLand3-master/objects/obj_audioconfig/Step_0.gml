if obj_pause.pause && obj_pause.inaudioconfig {
	scr_getinput()
	move2 = (key_right2 - key_left2)
	selected += move2
	selected = clamp(selected, 0, 2);
	if key_jump2 {
		switch selected 
		{
			case 0:
				global.master_volume = clamp(get_integer("MASTER VOLUME", 100) / 100, 0, 1)
				audio_master_gain(global.master_volume)
			break
			case 1:
				global.music_volume = clamp(get_integer("MUSIC VOLUME", 100) / 100, 0, 1)
			break
			case 2:
				global.sfx_volume = clamp(get_integer("SFX VOLUME", 80) / 100, 0, 1)
			break
		}
	}
}
else {
	cursor_x = 0
	cursor_y = 0
	selected = 0
}
draw_index += 0.35;
