with (obj_player)
{
    if (!instance_exists(obj_fadeout))
    {
        player_y = other.target_y
        player_x = other.target_x
        targetRoom = other.targetRoom
		hallway = 1
		hallwaydirection = sign(other.image_xscale)
        other.visited = 1
        image_index = 0
        if (state == 64)
            state = 0
        instance_create(x, y, obj_fadeout)
    }
}
