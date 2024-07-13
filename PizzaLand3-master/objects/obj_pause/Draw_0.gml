if (pause == 1)
{
    //draw_rectangle_color(0, 0, room_width, room_height, color, color, color, color, 0)
    //draw_sprite_tiled(spr_pizzacollect, 0, x, y)
	draw_sprite_tiled(bg_audioconfig, 0, x, y)
    vspeed = -0.25
    hspeed = 0.25
}
		if (pause == 1)
				{
				if !audio_is_playing(music_pause)
				audio_play_sound(music_pause, 1, true)
				}
			if (stopmusic == 1)
				{
				audio_stop_sound(music_pause)
				}
				