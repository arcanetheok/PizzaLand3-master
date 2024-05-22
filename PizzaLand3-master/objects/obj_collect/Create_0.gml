with (other.id)
{
    sprite_index =  choose(spr_shroomcollect, spr_cheesecollect, spr_tomatocollect, spr_sausagecollect)
    image_speed = 0.35
    global.collected = 0
    global.collectsound = sound_points
}
