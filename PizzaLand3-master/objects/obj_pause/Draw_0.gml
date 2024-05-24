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
				audio_play_sound(musics_pause, 1, true)
				}
if (stopmusic == 1)
				{
				audio_stop_sound(musics_pause)
				}