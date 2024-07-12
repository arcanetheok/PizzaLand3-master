
switch state 
{
	case 0:
	scr_pushblock_grabbable()
	break
	
	case 101:
	scr_pushblock_grabbed()
	break
}

//if (vsp < 12)
vsp += grav
if state == 0 grav = 0.3
if grounded && slide == 1
{
    hsp = approach(hsp, 0, 0.5)
}
else if grounded
{
	hsp = 0
	sprite_index = spr_pushblock1
}

if thrown == 1 
{
	mask_index = spr_masknull
	thrown = 0
	slide = 1
}

scr_collide()