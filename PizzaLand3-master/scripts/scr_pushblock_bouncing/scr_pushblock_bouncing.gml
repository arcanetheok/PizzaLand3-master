// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pushblock_bouncing()
{
	if place_meeting(x, y + 1, obj_player) && vsp > 0
	{
		vsp = -8
		if obj_player.vsp < -1
			vsp += obj_player.vsp
	}
	if grounded && !place_meeting(x, y, obj_player)
	{
		state = 0
	}
}