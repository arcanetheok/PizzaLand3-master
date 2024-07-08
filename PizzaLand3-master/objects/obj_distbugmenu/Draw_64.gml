/// @description Draw text backdrop
if !visible exit;
if options.drawbackground // Check if the "drawbackground" option is on...
{
	var _oldfont = draw_get_font()
	var _oldalpha = draw_get_alpha()
	var _oldcolor = draw_get_color()
	var _oldhalign = draw_get_halign()
	var _oldvalign = draw_get_valign()
	draw_set_alpha(options.backgroundalpha)
	draw_set_color(options.backgroundcolor) // Set some draw parameters...
	draw_set_halign(fa_left)
	draw_set_valign(fa_bottom)
	draw_roundrect(menux - options.background_size_buffer[0], menuy - options.background_size_buffer[1], (menux + string_width(texttodraw)) + options.background_size_buffer[0], (menuy + (struct_names_count(structlist[page]) * options.vspacing)) + options.background_size_buffer[1], false) // If drawbackground is on, draw a rectangle that spans the text.
	draw_set_font(_oldfont) 
	draw_set_alpha(_oldalpha)
	draw_set_color(_oldcolor) 
	draw_set_halign(_oldhalign)
	draw_set_valign(_oldvalign)
}