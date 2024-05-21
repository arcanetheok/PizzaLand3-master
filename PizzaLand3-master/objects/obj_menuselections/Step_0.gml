if instance_exists(obj_keyconfig)
    visible = false
else
    visible = true

if (levelselect == 1)
{
    if (!instance_exists(obj_keyconfig))
        scr_getinput()
    if key_down2
        b += 1
    if key_up2
        b -= 1
	b = clamp(b, 0, 0)
    if (!instance_exists(obj_fadeout))
    {
        if key_jump
        {
            with (instance_create(x, y, obj_fadeout))
            {
                if (other.b == 0)
                {
                    obj_player.targetRoom = floort_room0
					obj_player.targetDoor = "1"
                    obj_player.character = "P"
                }
            }
        }
        if key_slap2
        {
            with (instance_create(x, y, obj_fadeout))
            {
                if (other.b == 0)
                {
                    obj_player.targetRoom = rm_worldmap
					obj_player.targetDoor = "1"
                    obj_player.character = "P"
                }
            }
        }
    }
}
else if (levelselect == 0)
{
    if (!instance_exists(obj_keyconfig))
        scr_getinput()
    if (key_up && (!instance_exists(obj_keyconfig)) && optionselect == 1)
    {
        optionselect = 0
        scr_sound(sound_points)
    }
    else if (key_down && (!instance_exists(obj_keyconfig)) && optionselect == 0)
    {
        optionselect = 1
        scr_sound(sound_points)
    }
    if (optionselect == 0)
        obj_cursor.y = (y - 24)
    else if (optionselect == 1)
        obj_cursor.y = (y + 18)
    if (optionselect == 0 && key_jump && (!instance_exists(obj_keyconfig)))
    {
        scr_sound(sound_pizzagot)
        levelselect = 1
        sprite_index = spr_null
    }
    if (optionselect == 1 && (!instance_exists(obj_keyconfig)))
    {
        if keyboard_check_pressed(global.key_jump)
        {
            scr_sound(sound_pizzagot)
            instance_create(x, y, obj_keyconfig)
        }
        else if gamepad_button_check_pressed(0, global.key_jumpC)
        {
            scr_sound(sound_pizzagot)
            with (instance_create(x, y, obj_keyconfig))
                controller = 1
        }
    }
}
