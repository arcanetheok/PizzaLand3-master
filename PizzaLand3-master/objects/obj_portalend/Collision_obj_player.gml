if (obj_player.state != 12 && global.panic == 1)
{
    obj_player.hsp = 0
    sprite_index = spr_pizzaportalend
    image_index = 0
    obj_player.state = 12
    obj_player.grav = 0
    obj_player.visible = false
}
