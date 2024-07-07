function scr_player_mach2()
{
	//if (character == "P")
	//{
	//    if (windingAnim < 2000)
	//        windingAnim++
	//}
	if ((!(place_meeting(x, (y + 1), obj_railh))) && (!(place_meeting(x, (y + 1), obj_railh2))))
	    hsp = (xscale * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((xscale * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((xscale * movespeed) + 5)
	move2 = (key_right2 + key_left2)
	move = (key_right + key_left)
	//if (character == "N")
	//{
	//    if (movespeed < 24 && move == xscale)
	//    {
	//        movespeed += 0.05
	//        if ((!instance_exists(obj_crazyruneffect)) && movespeed > 12)
	//            instance_create(x, y, obj_crazyruneffect)
	//    }
	//    else if (movespeed > 12 && move != xscale)
	//        movespeed -= 0.05
	//}
	if movespeed < 11 && !stop_running
		movespeed = approach(movespeed, 11, 0.3); 
	crouchslideAnim = 1
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5)
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (grounded && vsp > 0)
	    jumpstop = 0
	if (input_buffer_jump < 8 && grounded)
	{
	    scr_sound(sound_jump)
	    vsp = -9.5
	}
	if (machpunchAnim == 0 && sprite_index != spr_mach && sprite_index != spr_player_mach3 && sprite_index != spr_player_machhit)
		sprite_index = spr_player_charge
	if (!grounded)
	    machpunchAnim = 0
	if (grounded && character == "P")
	{
	        mach2 += 0.2
			
		//if (mach2 < 30)
	   //     mach2 += 0.2
	//	else
	//		stop_running = true	
	    //if (mach2 >= 100)
	    //{
	    //    machhitAnim = 0
	    //    state = 83
	    //    flash = 1
	    //    sprite_index = spr_player_mach4
	    //    instance_create(x, y, obj_jumpdust)
	    //    if (movespeed < 12)
	    //        movespeed = 12
	    //}
	}
	if key_jump
	    input_buffer_jump = 0
	if !key_slap && movespeed > 8
		stop_running = true;
	if stop_running {
		movespeed = approach(movespeed, 0, 0.5);
		if hsp == 0 // Dear Arcane, Please format your if statements better. I am going to kill you. - Dist
		{ 
			state = 0;
			stop_running = false;
		}
		
	}
	if move != 0 && move != xscale {
	//	state = 0
	//	hsp = 0;
		stop_running = 1;
		key_slap = 0;
	}

	if (key_down && grounded)
	{
	    sprite_index = spr_crouchslip
	    if (character == "P")
	        machhitAnim = 0
	    state = 61
	}
	if (scr_solid((x + xscale), y) && (!(place_meeting((x + xscale), y, obj_slope))) && (!(place_meeting((x + xscale), y, obj_destructibles))))
	{
	    scr_sound(sound_suplex1)
	    movespeed = 0
	    state = 65
	    hsp = -xscale * 2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
	}
	if place_meeting(x + hsp, y, obj_baddie) || place_meeting(x + xscale, y, obj_baddie) {
		scr_sound(sound_suplex1)
	    movespeed = 0
	    state = 65
	    hsp = -xscale * 7
	    vsp = -4
	    mach2 = 0
	    image_index = 0
	    instance_create((x + 10 * xscale), (y + 10), obj_bumpeffect)
	}
	if ((!instance_exists(obj_dashcloud)) && grounded)
	    instance_create(x, y, obj_dashcloud)
	//if ((!grounded) && sprite_index != spr_secondjump2 && sprite_index != spr_mach2jump)
	//    sprite_index = spr_secondjump1
	//if (floor(image_index) == (image_number - 1) && sprite_index == spr_secondjump1)
	//    sprite_index = spr_secondjump2
	//if key_down2
	//{
	//    taunttimer = 20
	//    tauntstoredmovespeed = movespeed
	//    tauntstoredsprite = sprite_index
	//    tauntstoredstate = state
	//    state = 44
	//    image_index = random_range(0, 6)
	//    sprite_index = spr_player_taunt
	//    instance_create(x, y, obj_taunteffect)
	//}
	if key_shoot2
	{
	    vsp = -4
	    sprite_index = spr_player_pistolair
	    state = 32
	    image_index = 0
	    shoot = 1
	}
	image_speed = 0.65
}
