if visible 
{
	var _oldfont = draw_get_font()
	var _oldalpha = draw_get_alpha()
	var _oldcolor = draw_get_color()
	var _oldhalign = draw_get_halign()
	var _oldvalign = draw_get_valign()
	draw_set_color(c_red)
	draw_set_alpha(1)
	depth = -999
	draw_rectangle(obj_player.bbox_left, obj_player.bbox_top, obj_player.bbox_right, obj_player.bbox_bottom, false)
	depth = 0
	draw_set_font(_oldfont) 
	draw_set_alpha(_oldalpha)
	draw_set_color(_oldcolor) 
	draw_set_halign(_oldhalign)
	draw_set_valign(_oldvalign)
}