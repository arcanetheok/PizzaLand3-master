// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_pushblock_grabbable()
{
	if obj_player.state == 63
	{
		with (obj_player)
		{
			if place_meeting(x + hsp, y, other)
			{
				state = 21
				other.state = 101
			}
		}
	}
}