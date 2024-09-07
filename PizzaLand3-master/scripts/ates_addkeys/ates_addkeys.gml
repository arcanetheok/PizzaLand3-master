function ates_addkeys()  {
    with (obj_ates) {
        virtual_key_z = virtual_key_add(zx, zy, (27 * button_scale), (29 * button_scale), ord("Z"))
        virtual_key_x = virtual_key_add(xx, xy, (27 * button_scale), (29 * button_scale), ord("X"))
        virtual_key_up = virtual_key_add((joy_posx - (back_size * joy_scale)), (joy_posy - (back_size * joy_scale)), ((back_size * joy_scale) + ((59 * joy_scale) + (back_size * joy_scale))), ((joy_size * joy_scale) + (back_size * joy_scale)), vk_up)
        virtual_key_right = virtual_key_add(((joy_posx + (59 * joy_scale)) - (joy_size * joy_scale)), (joy_posy - (back_size * joy_scale)), ((joy_size * joy_scale) + (back_size * joy_scale)), (((back_size * joy_scale) + (59 * joy_scale)) + (back_size * joy_scale)), vk_right)
        virtual_key_left = virtual_key_add((joy_posx - (back_size * joy_scale)), (joy_posy - (back_size * joy_scale)), ((joy_size * joy_scale) + (back_size * joy_scale)), ((back_size * joy_scale) + ((59 * joy_scale) + (back_size * joy_scale))), vk_left)
        virtual_key_down = virtual_key_add((joy_posx - (back_size * joy_scale)), ((joy_posy + (59 * joy_scale)) - (joy_size * joy_scale)), (((back_size * joy_scale) + (59 * joy_scale)) + (back_size * joy_scale)), ((joy_size * joy_scale) + (back_size * joy_scale)), vk_down)
        virtual_key_joy = virtual_key_add((joy_posx - (back_size * joy_scale)), (joy_posy - (back_size * joy_scale)), (((59 + back_size) * joy_scale) + (back_size * joy_scale)), (((59 + back_size) * joy_scale) + (back_size * joy_scale)), 126)
        virtual_key_esc = virtual_key_add(escx, escy, 82, 88, vk_escape)
        if (debugbutton == 1)virtual_key_debug = virtual_key_add(debugx, debugy, (27 * button_scale), (29 * button_scale), vk_f5)
        if (shiftlock == 0) virtual_key_shift = virtual_key_add(shiftx, shifty, (27 * button_scale), (29 * button_scale), vk_shift)
        if (shiftlock  == 1) virtual_key_shift = virtual_key_add(shiftx, shifty, (27 * button_scale), (29 * button_scale), vk_shift)
    }
} ///spit my game flashnin forgor to decompile values as vk_# 