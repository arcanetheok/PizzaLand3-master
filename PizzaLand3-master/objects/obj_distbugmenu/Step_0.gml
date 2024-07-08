/// @description Update values

if !visible exit;

mouseposx = device_mouse_x_to_gui(0)
mouseposy = device_mouse_y_to_gui(0)
distbug_getvalues() // Update the values in the struct.
for (var i = 0; i < struct_names_count(structlist[page]); i += 1) // Loop for every item in the struct.
{
	var _listnames = struct_get_names(structlist[page]) // Returns an array, this gets all of the names of the struct "structlist[page]"
	var _listvalue = struct_get(structlist[page], _listnames[i]) 
	var _listtype = string(typeof(_listvalue)) // Get the type of the struct's value and convert it to a string
    var _texttodraw = "" // This local variable will be used to store the text that is going to be drawn to the screen.
	if _listtype == "number" // If the string type is a number...
	{
		_texttodraw = _listnames[i] + ": " + string(_listvalue)
	}
	if _listtype == "bool" // If the string type is a boolean...
	{
		_texttodraw = _listnames[i] + ": " + string(_listvalue) 
	}
    if _listtype == "array" // If the string type is an array...
	{
		var _text = string(_listvalue[0]) // Define "_text" local variable as the first value in the array "_listvalue"
		for (var j = 0; j < array_length(_listvalue); j += 1) // Iterate through each bit of the array "_listvalue"
		{ 
			if j != 0 // If this isn't the first iteration of the for loop...
			{
				_text = _text + ", " + string(_listvalue[j]) // Add the next list value into the "_text" local variable, and seperate it with a comma
			}
		}
		_texttodraw = _listnames[i] + ": " + _text // Once the for loop has concluded, add the key of the value in front of the _text string, and seperate it with a ": "
		
	}
	
/*  if _listtype == "ref" // If the string type is a ds map...
	{
		var _text = string(_listvalue[0]) // Define "_text" local variable as the first value in the ds map "_listvalue"
		for (var j = 0; j < ds_map_size(_listvalue); j += 1) // Iterate through each bit of the ds map "_listvalue"
		{ 
			if j != 0 // If this isn't the first iteration of the for loop...
			{
				_text = _text + ", " + string(_listvalue[j]) // Add the next list value into the "_text" local variable, and seperate it with a comma
			}
		}
		_texttodraw = _listnames[i] + ": " + _text // Once the for loop has concluded, add the key of the value in front of the _text string, and seperate it with a ": "
	}
*/

	if _listtype == "ref"
	{
		if string_pos("ds_list", string(_listvalue)) // check for ds list
		{
			var _text = string(ds_list_find_value(_listvalue, 0)) // Define "_text" local variable as the first value in the ds map "_listvalue"
			for (var j = 0; j < ds_list_size(_listvalue); j += 1) // Iterate through each bit of the ds map "_listvalue"
			{ 
				if j != 0 // If this isn't the first iteration of the for loop...
				{
					_text = _text + ", " + string(ds_list_find_value(_listvalue, j)) // Add the next list value into the "_text" local variable, and seperate it with a comma
				}
			}
			_texttodraw = _listnames[i] + ": " + _text // Once the for loop has concluded, add the key of the value in front of the _text string, and seperate it with a ": "
		}
	}
	
	if _listtype == "string"
	{
		_texttodraw = _listnames[i] + ": " + _listvalue
	}
	texttodraw = texttodraw + "\n" + _texttodraw // Add a new line between every part of the structlist[page] struct.
}

if rectangle_in_rectangle(menux - options.background_size_buffer[0], menuy - options.background_size_buffer[1], (menux + string_width(texttodraw)) + options.background_size_buffer[0], (menuy + (struct_names_count(structlist[page]) * options.vspacing)) + options.background_size_buffer[1], mouseposx - 20, mouseposy - 20, mouseposx + 20, mouseposy + 20) // Check if the mouse is colliding with the text.
{ 
	mouseinrect = true // Update the mouse colliding variable
	distbug_trace("RECT INTERSECTING WITH MOUSE") // Do a debug print
}

if mouseinrect && mouse_check_button(mb_left) // If the mouse is in the menu, and the left mouse button is down...
{
	distbug_trace("DRAGGING...") // Debug print
	if options.draggable // Check if draggable is on
	{
		menux += (mouseposx - tempmousex) // Add the difference of the mouse's x from the last frame and this frame
		menuy += (mouseposy - tempmousey) // Add the difference of the mouse's y from the last frame and this frame
	}
}
distbug_trace(mouseposx, mouseposy)