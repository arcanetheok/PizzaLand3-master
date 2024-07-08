/// @description Update mouse variables
tempmousex = mouseposx // Update the mouse's last frame position
tempmousey = mouseposy // Update the mouse's last frame position
if !rectangle_in_rectangle(menux - options.background_size_buffer[0], menuy - options.background_size_buffer[1], (menux + string_width(texttodraw)) + options.background_size_buffer[0], (menuy + (struct_names_count(structlist[page]) * options.vspacing)) + options.background_size_buffer[1], mouseposx - 20, mouseposy - 20, mouseposx + 20, mouseposy + 20) // Check if the mouse is colliding with the text.
{ 
	mouseinrect = false // Check for mouse not being in the window anymore
}
if !visible exit;