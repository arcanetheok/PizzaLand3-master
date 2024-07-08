// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_debugstate()
{
	move = (key_left + key_right)
	move2 = (key_down - key_up)
	x += 10 * move
	y += 10 * move2 
	mask_index = spr_masknull
}