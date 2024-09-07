if (os_type == os_android || os_type == os_ios || os_type == os_windows)
{
    if (isoncontroller == 0)
    {
        draw_sprite_ext(spr_z_button, (keyboard_check(ord("Z")) + skinselect), zx, zy, button_scale, button_scale, 0, c_white, blending)
        draw_sprite_ext(spr_x_button, (keyboard_check(ord("X")) + skinselect), xx, xy, button_scale, button_scale, 0, c_white, blending)
		draw_sprite_ext(spr_joybase, skinselect, joy_posx, joy_posy, joy_scale, joy_scale, 0, c_white, blending)
        draw_sprite_ext(spr_joystick, (keyboard_check(ord("~")) + skinselect), joy_center_x, joy_center_y, joy_scale, joy_scale, 0, c_white, blending)
        draw_sprite_ext(spr_joybase, skinselect, joy_posx, joy_posy, joy_scale, joy_scale, 0, c_white, blending)
		draw_sprite_ext(spr_joystick, (keyboard_check(ord("~")) + skinselect), joy_center_x, joy_center_y, joy_scale, joy_scale, 0, c_white, blending)
        draw_sprite_ext(spr_joybase, skinselect, joy_posx, joy_posy, joy_scale, joy_scale, 0, c_white, blending)
        draw_sprite_ext(spr_joystick, (keyboard_check(ord("~")) + skinselect), joy_center_x, joy_center_y, joy_scale, joy_scale, 0, c_white, blending)
        draw_sprite_ext(spr_joybase, (skinselect + 2), joy_posx, joy_posy, joy_scale, joy_scale, 0, c_white, blending)
        draw_sprite_ext(spr_joystick, ((keyboard_check(ord("~")) + skinselect) + 2), joy_center_x, joy_center_y, joy_scale, joy_scale, 0, c_white, blending)
        draw_sprite_ext(spr_esc_button, keyboard_check(vk_escape), escx, escy, 2, 2, 0, c_white, blending)
        if (debugbutton == 1)
            draw_sprite_ext(spr_f5_button, keyboard_check(vk_f5), debugx, debugy, 2.45, 2.45, 0, c_white, blending)
        if (isinoptions == 1)
        {
            if (atesreset != 50)
            {
                draw_sprite_ext(spr_black, 0, 0, 0, 1, 1, 0, c_white, 0.5)
                draw_sprite_ext(spr_atestextunbroken, 0, 220, 60, 1, 1, 0, c_white, 1)
                draw_sprite_ext(spr_esc_button, keyboard_check(vk_escape), escx, escy, 2, 2, 0, c_white, blending)
                draw_sprite_ext(spr_z_button, (keyboard_check(ord("Z")) + skinselect), zxplace, zyplace, button_scaleplace, button_scaleplace, 0, c_red, blendingplace)
                draw_sprite_ext(spr_x_button, (keyboard_check(ord("X")) + skinselect), xxplace, xyplace, button_scaleplace, button_scaleplace, 0, c_red, blendingplace)				}
            draw_sprite_ext(spr_z_button, (keyboard_check(ord("Z")) + skinselect), zxplace, zyplace, button_scaleplace, button_scaleplace, 0, c_red, blendingplace)
            draw_sprite_ext(spr_x_button, (keyboard_check(ord("X")) + skinselect), xxplace, xyplace, button_scaleplace, button_scaleplace, 0, c_red, blendingplace)
			draw_sprite_ext(spr_joybase, skinselect, joy_posxplace, joy_posyplace, joy_scaleplace, joy_scaleplace, 0, c_red, blendingplace)
        }
    }
}