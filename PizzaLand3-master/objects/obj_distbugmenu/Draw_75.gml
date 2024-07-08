/// @description Draw text
if !visible exit;
var _oldfont = draw_get_font()
var _oldalpha = draw_get_alpha()
var _oldcolor = draw_get_color()
var _oldhalign = draw_get_halign()
var _oldvalign = draw_get_valign()

draw_set_font(asset_get_index(options.font)) 
draw_set_alpha(options.alpha)
draw_set_halign(fa_left)
draw_set_valign(fa_bottom)

if options.draw_text_backdrop
{
	draw_set_color(options.text_backdrop_color)
	if options.text_backdrop_blur draw_set_alpha(options.alpha / 2)
	draw_text(menux - 2, (menuy + (struct_names_count(structlist[page]) * options.vspacing)) + 2, texttodraw)
}

draw_set_color(options.textcolor) 
draw_text(menux, (menuy + (struct_names_count(structlist[page]) * options.vspacing)), texttodraw)
texttodraw = "" // Clear "texttodraw" so it's ready for the next frame.
draw_set_font(_oldfont) 
draw_set_alpha(_oldalpha)
draw_set_color(_oldcolor) 
draw_set_halign(_oldhalign)
draw_set_valign(_oldvalign)