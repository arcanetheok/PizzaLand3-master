var draw_y = 540 / 2;
var str_w;
var half_game_width = (window_get_width() / 2);
draw_set_font(global.font)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_alpha(1)
if obj_pause.pause {

	if obj_pause.inaudioconfig {
		switch selected {
			case 0:
				draw_text(480, draw_y, "MASTER VOLUME... " + string(global.master_volume))
				str_w = string_width("MASTER VOLUME... " + string(global.master_volume));
				cursor_y = lerp(cursor_y, draw_y, 0.1)
			break
			case 1:
				draw_text(480, draw_y - 50, "MUSIC VOLUME... " + string(global.music_volume));
				str_w = string_width("MUSIC VOLUME... " + string(global.music_volume))
				cursor_y = lerp(cursor_y, draw_y - 50, 0.1);
			break
			case 2:
				draw_text(480, draw_y - 75, "SFX VOLUME... " + string(global.sfx_volume))
				str_w = string_width("SFX VOLUME... " + string(global.sfx_volume));
				cursor_y = lerp(cursor_y, draw_y - 75, 0.1);
			break
		}
			cursor_x = lerp(cursor_x, 640 - str_w, 0.1);
			draw_sprite(spr_cursor, draw_index, cursor_x, cursor_y)
	}
}