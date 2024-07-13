with (obj_player)
{
    ds_list_add(global.saveroom, other.id)
    global.treasure = 1
    hsp = 0
    vsp = 0
    if (other.sprite_index == other.spridle)
    {
        state = 16
        obj_music.jingle = 1
        scr_sound(sound_treasuregot)
        other.alarm[0] = 120
    }
    other.sprite_index = other.sprgot
    other.x = obj_player.x
    other.y = (obj_player.y - 55)
    obj_tv.showtext = 1
    obj_tv.message = "DISC!!!"
    obj_tv.alarm[0] = 150
}

