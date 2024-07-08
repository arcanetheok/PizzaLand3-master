function distbug_init()
{
	options = 
	{
		draggable: true, // Make this false if you don't want the debug menu to be draggable.
		print_debug_messages: true, // Make this false if you don't want the debug menu to print some things to the console.
		drawbackground: true,
		backgroundcolor: c_grey,
		backgroundalpha: 0.7,
		background_size_buffer: [20, 10], // The first value is the X increase, and the 2nd is the Y increase.
		draw_text_backdrop: false,
		text_backdrop_blur: true,
		text_backdrop_color: c_black,
		font: "font0", // Type this as a string.
		textcolor: c_white, // Self explanatory.
		alpha: 0.7, // Self explanatory.
		vspacing: 22 // eg: 20
	}
	
	page = 0
	structlist = []
	
	distbug_getvalues()
	return;
}

function distbug_getvalues() 
{
	tracked_var_list = 
	{ 
		sprite: sprite_get_name(obj_player.sprite_index),
		room: room_get_name(room),
		//state: obj_player.statename,
		state: obj_player.state,
		//angle: obj_player.angle,
		//character: obj_player.character,
		pos: [obj_player.x, obj_player.y], // Stored (and printed) as an array.
		speed: [obj_player.hsp, round(obj_player.vsp)],
		movespeed: obj_player.movespeed,
		//move: obj_player.move,
		//alarms: [obj_player.alarm[0], obj_player.alarm[1], obj_player.alarm[2]]
		//wallspeed: obj_player.wallspeed,
	}
	
	tracked_var_list2 = 
	{ 
		//saveroom: global.saveroom, 
		//followerlist: global.followerlist,
//		objective: global.objective,
//		objectivetarget: global.objectivetarget,
//		objectiveprogress: global.objectiveprogress,
//		objectiveenemy: global.objectiveenemy,
	}
	
	structlist = [tracked_var_list, tracked_var_list2]
	
	return;
}

function distbug_trace() 
{
	if options.print_debug_messages 
	{
		for (var i = 0; i < argument_count; i += 1)
		{
			show_debug_message(argument[i])
		}
	}
}