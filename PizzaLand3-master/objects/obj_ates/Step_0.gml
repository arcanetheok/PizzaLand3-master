if (keyboard_check(ord("~")) && ateseditv2 == 0)
{
    if (device_mouse_y_to_gui(0) >= joy_posy && device_mouse_y_to_gui(0) <= (joy_posy + (59 * joy_scale)) && device_mouse_x_to_gui(0) >= joy_posx && device_mouse_x_to_gui(0) <= (joy_posx + (59 * joy_scale)) && device_mouse_check_button(0, mb_left))
        joy_center_x = (device_mouse_x_to_gui(0) - (21 * joy_scale))
    if (device_mouse_y_to_gui(0) >= joy_posy && device_mouse_y_to_gui(0) <= (joy_posy + (59 * joy_scale)) && device_mouse_x_to_gui(0) >= joy_posx && device_mouse_x_to_gui(0) <= (joy_posx + (59 * joy_scale)) && device_mouse_check_button(0, mb_left))
        joy_center_y = (device_mouse_y_to_gui(0) - (21 * joy_scale))
    if (device_mouse_y_to_gui(1) >= joy_posy && device_mouse_y_to_gui(1) <= (joy_posy + (59 * joy_scale)) && device_mouse_x_to_gui(1) >= joy_posx && device_mouse_x_to_gui(1) <= (joy_posx + (59 * joy_scale)) && device_mouse_check_button(1, mb_left))
        joy_center_x = (device_mouse_x_to_gui(1) - (21 * joy_scale))
    if (device_mouse_y_to_gui(1) >= joy_posy && device_mouse_y_to_gui(1) <= (joy_posy + (59 * joy_scale)) && device_mouse_x_to_gui(1) >= joy_posx && device_mouse_x_to_gui(1) <= (joy_posx + (59 * joy_scale)) && device_mouse_check_button(1, mb_left))
        joy_center_y = (device_mouse_y_to_gui(1) - (21 * joy_scale))
    if (device_mouse_y_to_gui(2) >= joy_posy && device_mouse_y_to_gui(2) <= (joy_posy + (59 * joy_scale)) && device_mouse_x_to_gui(2) >= joy_posx && device_mouse_x_to_gui(2) <= (joy_posx + (59 * joy_scale)) && device_mouse_check_button(2, mb_left))
        joy_center_x = (device_mouse_x_to_gui(2) - (21 * joy_scale))
    if (device_mouse_y_to_gui(2) >= joy_posy && device_mouse_y_to_gui(2) <= (joy_posy + (59 * joy_scale)) && device_mouse_x_to_gui(2) >= joy_posx && device_mouse_x_to_gui(2) <= (joy_posx + (59 * joy_scale)) && device_mouse_check_button(2, mb_left))
        joy_center_y = (device_mouse_y_to_gui(2) - (21 * joy_scale))
    if (device_mouse_y_to_gui(3) >= joy_posy && device_mouse_y_to_gui(3) <= (joy_posy + (59 * joy_scale)) && device_mouse_x_to_gui(3) >= joy_posx && device_mouse_x_to_gui(3) <= (joy_posx + (59 * joy_scale)) && device_mouse_check_button(3, mb_left))
        joy_center_x = (device_mouse_x_to_gui(3) - (21 * joy_scale))
    if (device_mouse_y_to_gui(3) >= joy_posy && device_mouse_y_to_gui(3) <= (joy_posy + (59 * joy_scale)) && device_mouse_x_to_gui(3) >= joy_posx && device_mouse_x_to_gui(3) <= (joy_posx + (59 * joy_scale)) && device_mouse_check_button(3, mb_left))
        joy_center_y = (device_mouse_y_to_gui(3) - (21 * joy_scale))
    if (device_mouse_y_to_gui(4) >= joy_posy && device_mouse_y_to_gui(4) <= (joy_posy + (59 * joy_scale)) && device_mouse_x_to_gui(3) >= joy_posx && device_mouse_x_to_gui(4) <= (joy_posx + (59 * joy_scale)) && device_mouse_check_button(4, mb_left))
        joy_center_x = (device_mouse_x_to_gui(4) - (21 * joy_scale))
    if (device_mouse_y_to_gui(4) >= joy_posy && device_mouse_y_to_gui(4) <= (joy_posy + (59 * joy_scale)) && device_mouse_x_to_gui(3) >= joy_posx && device_mouse_x_to_gui(4) <= (joy_posx + (59 * joy_scale)) && device_mouse_check_button(4, mb_left))
        joy_center_y = (device_mouse_y_to_gui(4) - (21 * joy_scale))
}
if (!keyboard_check(ord("~")))
{
    joy_center_x = (joy_posx + (((59 * joy_scale) / 2) - ((41 * joy_scale) / 2)))
    joy_center_y = (joy_posy + (((59 * joy_scale) / 2) - ((41 * joy_scale) / 2)))
}
performance = 0
if (goback == 1)
{
    isinoptions = 0
    zx = zxplace
    zy = zyplace
    xx = xxplace
    xy = xyplace
    cx = cxplace
    cy = cyplace
    shiftx = shiftxplace
    shifty = shiftyplace
    joy_posx = joy_posxplace
    joy_posy = joy_posyplace
    button_scale = button_scaleplace
    joy_scale = joy_scaleplace
    blending = blendingplace
    virtual_key_delete(virtual_key_z)
    virtual_key_delete(virtual_key_x)
    virtual_key_delete(virtual_key_c)
    virtual_key_delete(virtual_key_up)
    virtual_key_delete(virtual_key_right)
    virtual_key_delete(virtual_key_left)
    virtual_key_delete(virtual_key_down)
    virtual_key_delete(virtual_key_joy)
    ates_addkeys()
    ini_open("touch.ini")
    ini_write_real("CONFIG", "zx", zx)
    ini_write_real("CONFIG", "zy", zy)
    ini_write_real("CONFIG", "xx", xx)
    ini_write_real("CONFIG", "xy", xy)
    ini_write_real("CONFIG", "cx", cx)
    ini_write_real("CONFIG", "cy", cy)
    ini_write_real("CONFIG", "joy_posx", joy_posx)
    ini_write_real("CONFIG", "joy_posy", joy_posy)
    ini_write_real("CONFIG", "button_scale", button_scale)
    ini_write_real("CONFIG", "joy_scale", joy_scale)
    ini_write_real("CONFIG", "blending", blending)
    ini_write_real("CONFIG", "shiftx", shiftx)
    ini_write_real("CONFIG", "shifty", shifty)
    ini_write_real("CONFIG", "skin", skinselect)
    ini_write_real("CONFIG", "musicoff", performance)
    ini_write_real("CONFIG", "shiftlock", shiftlock)
    ini_write_real("CONFIG", "debugbutton", debugbutton)
    ini_close()
    ateseditv2 = 0
    atesreset = 50
    obj_musicATES.atescredits = 0
    goback = 0
}
if (reset == 1)
{
    zxplace = 800
    zyplace = 390
    xxplace = 680
    xyplace = 420
    cxplace = 820
    cyplace = 280
    debugx = 780
    debugy = 4
    escx = 875
    escy = 4
    shiftxplace = 700
    shiftyplace = 300
    button_scaleplace = 3.3
    joy_scaleplace = 3.3
    joy_posxplace = 48
    joy_posyplace = 312.5
    blendingplace = 0.5
    joy_center_x = (joy_posx + (((59 * joy_scale) / 2) - ((41 * joy_scale) / 2)))
    joy_center_y = (joy_posy + (((59 * joy_scale) / 2) - ((41 * joy_scale) / 2)))
    joy_size = 19.675
    shiftlock = 0
    ini_open("touch.ini")
    ini_write_real("CONFIG", "zx", zx)
    ini_write_real("CONFIG", "zy", zy)
    ini_write_real("CONFIG", "xx", xx)
    ini_write_real("CONFIG", "xy", xy)
    ini_write_real("CONFIG", "cx", cx)
    ini_write_real("CONFIG", "cy", cy)
    ini_write_real("CONFIG", "joy_posx", joy_posx)
    ini_write_real("CONFIG", "joy_posy", joy_posy)
    ini_write_real("CONFIG", "button_scale", button_scale)
    ini_write_real("CONFIG", "joy_scale", joy_scale)
    ini_write_real("CONFIG", "blending", blending)
    ini_write_real("CONFIG", "shiftx", shiftx)
    ini_write_real("CONFIG", "shifty", shifty)
    ini_write_real("CONFIG", "shiftlock", shiftlock)
    ini_close()
    reset = 0
    //create_transformation_tip("Configurations Resetted.", "touch.ini")
}
if (skinselect > 12)
    skinselect = 0
if ((os_type != os_android && os_type != os_ios && os_type != os_windows) || (os_type == os_windows && testing == 0))
    instance_destroy()
if (shiftheld == 1 && shiftlock == 1)
    keyboard_key_press(vk_shift)
if (shiftheld == 0 && shiftlock == 1)
    keyboard_key_release(vk_shift)
if (shiftlock == 1 && keyboard_check_pressed(ord("Q")))
    shiftheld += 1
if (shiftheld == 2)
    shiftheld = 0
if (shiftlock == 0 && shiftheld == 1)
    shiftheld = 0
if keyboard_check_pressed(vk_f5)
    isdebug += 1
if (isdebug == 1)
{
    keyboard_virtual_show(1, 0, 0, 0)
    isdebug = 2
    virtual_key_delete(virtual_key_z)
    virtual_key_delete(virtual_key_x)
    virtual_key_delete(virtual_key_c)
    virtual_key_delete(virtual_key_shift)
    virtual_key_delete(virtual_key_up)
    virtual_key_delete(virtual_key_right)
    virtual_key_delete(virtual_key_left)
    virtual_key_delete(virtual_key_down)
    virtual_key_delete(virtual_key_joy)
    virtual_key_delete(virtual_key_esc)
}
if (isdebug == 3 && debugbutton == 1)
{
    isdebug = 0
    keyboard_virtual_hide()
    virtual_key_delete(virtual_key_debug)
    ates_addkeys()
}
if (debugbutton == 2)
    debugbutton = 0
    if /*(scr_checkanygamepad(obj_inputAssigner.player_input_device[0]) != -4 || scr_checkanystick(obj_inputAssigner.player_input_device[0]))*/  cuntroller
    {
        isoncontroller = 1
        virtual_key_delete(virtual_key_z)
        virtual_key_delete(virtual_key_x)
        virtual_key_delete(virtual_key_c)
        virtual_key_delete(virtual_key_shift)
        virtual_key_delete(virtual_key_up)
        virtual_key_delete(virtual_key_right)
        virtual_key_delete(virtual_key_left)
        virtual_key_delete(virtual_key_down)
        virtual_key_delete(virtual_key_joy)
        virtual_key_delete(virtual_key_esc)
    }
    if (mouse_check_button(mb_left) && isoncontroller == 1)
    {
        ates_addkeys()
        isoncontroller = 0
    }
if (obj_ates.isinoptions == 1)
{
    if (ateseditv2 == 1)
    {
        virtual_key_delete(virtual_key_z)
        virtual_key_delete(virtual_key_x)
        virtual_key_delete(virtual_key_c)
        virtual_key_delete(virtual_key_shift)
        virtual_key_delete(virtual_key_up)
        virtual_key_delete(virtual_key_right)
        virtual_key_delete(virtual_key_left)
        virtual_key_delete(virtual_key_down)
        virtual_key_delete(virtual_key_joy)
        virtual_key_delete(virtual_key_esc)
        virtual_key_zedit = virtual_key_add(zxplace, zyplace, (27 * button_scale), (29 * button_scale), 96)
        virtual_key_xedit = virtual_key_add(xxplace, xyplace, (27 * button_scale), (29 * button_scale), 97)
        virtual_key_cedit = virtual_key_add(cxplace, cyplace, (27 * button_scale), (29 * button_scale), 98)
        virtual_key_shiftedit = virtual_key_add(shiftxplace, shiftyplace, (27 * button_scale), (29 * button_scale), 99)
        virtual_key_joyedit = virtual_key_add(joy_posxplace, joy_posyplace, (59 * joy_scale), (59 * joy_scale), 100)
        cool = 3
        ateseditv2 = 2
    }
    if (ateseditv2 == 2)
        cool -= 1
    if (ateseditv2 == 2 && cool == 0)
    {
        cool = 3
        virtual_key_delete(virtual_key_zedit)
        virtual_key_delete(virtual_key_xedit)
        virtual_key_delete(virtual_key_cedit)
        virtual_key_delete(virtual_key_shiftedit)
        virtual_key_delete(virtual_key_joyedit)
        virtual_key_zedit = virtual_key_add(zxplace, zyplace, (27 * button_scale), (29 * button_scale), 96)
        virtual_key_xedit = virtual_key_add(xxplace, xyplace, (27 * button_scale), (29 * button_scale), 97)
        virtual_key_cedit = virtual_key_add(cxplace, cyplace, (27 * button_scale), (29 * button_scale), 98)
        virtual_key_shiftedit = virtual_key_add(shiftxplace, shiftyplace, (27 * button_scale), (29 * button_scale), 99)
        virtual_key_joyedit = virtual_key_add(joy_posxplace, joy_posyplace, (59 * joy_scale), (59 * joy_scale), 100)
    }
    if (keyboard_check(vk_numpad0) && ateseditv2 == 2)
    {
        zxplace = ((device_mouse_x_to_gui(0) - (19.5 * button_scale)) + 16)
        zyplace = ((device_mouse_y_to_gui(0) - (18 * button_scale)) + 16)
        atesreset = 49
    }
    if (keyboard_check(vk_numpad1) && ateseditv2 == 2)
    {
        xxplace = ((device_mouse_x_to_gui(0) - (19.5 * button_scale)) + 16)
        xyplace = ((device_mouse_y_to_gui(0) - (18 * button_scale)) + 16)
        atesreset = 49
    }
    if (keyboard_check(vk_numpad2) && ateseditv2 == 2)
    {
        cxplace = ((device_mouse_x_to_gui(0) - (19.5 * button_scale)) + 16)
        cyplace = ((device_mouse_y_to_gui(0) - (18 * button_scale)) + 16)
        atesreset = 49
    }
    if (keyboard_check(vk_numpad3) && ateseditv2 == 2)
    {
        shiftxplace = ((device_mouse_x_to_gui(0) - (19.5 * button_scale)) + 16)
        shiftyplace = ((device_mouse_y_to_gui(0) - (18 * button_scale)) + 16)
        atesreset = 49
    }
    if (keyboard_check(vk_numpad4) && ateseditv2 == 2)
    {
        joy_posxplace = ((device_mouse_x_to_gui(0) - (29.5 * joy_scale)) + 16)
        joy_posyplace = ((device_mouse_y_to_gui(0) - (29.5 * joy_scale)) + 16)
        atesreset = 49
    }
    if (atesreset > 0 && ateseditv2 == 2 && (!keyboard_check(vk_numpad0)) && (!keyboard_check(vk_numpad1)) && (!keyboard_check(vk_numpad2)) && (!keyboard_check(vk_numpad3)) && (!keyboard_check(vk_numpad4)))
        atesreset -= 0.2
    if (atesreset == 0 && ateseditv2 == 2)
    {
        ateseditv2 = 0
        atesreset = 50
        virtual_key_delete(virtual_key_zedit)
        virtual_key_delete(virtual_key_xedit)
        virtual_key_delete(virtual_key_cedit)
        virtual_key_delete(virtual_key_shiftedit)
        virtual_key_delete(virtual_key_joyedit)
        ates_addkeys()
    }
}
if (startreset == 3)
{
    zx = 800
    zy = 390
    xx = 680
    xy = 420
    cx = 820
    cy = 280
    shiftx = 700
    shifty = 300
    button_scaleplace = 3.3
    joy_scale = 3.3
    joy_posx = 48
    joy_posy = 312.5
    blending = 0.3
    zxplace = zx
    zyplace = zy
    xxplace = xx
    xyplace = xy
    cxplace = cx
    cyplace = cy
    shiftxplace = shiftx
    shiftyplace = shifty
    joy_posxplace = joy_posx
    joy_posyplace = joy_posy
    joy_scaleplace = joy_scale
    button_scaleplace = button_scale
    blendingplace = blending
    ini_open("touch.ini")
    ini_write_real("CONFIG", "zx", zx)
    ini_write_real("CONFIG", "zy", zy)
    ini_write_real("CONFIG", "xx", xx)
    ini_write_real("CONFIG", "xy", xy)
    ini_write_real("CONFIG", "cx", cx)
    ini_write_real("CONFIG", "cy", cy)
    ini_write_real("CONFIG", "joy_posx", joy_posx)
    ini_write_real("CONFIG", "joy_posy", joy_posy)
    ini_write_real("CONFIG", "button_scale", button_scale)
    ini_write_real("CONFIG", "joy_scale", joy_scale)
    ini_write_real("CONFIG", "blending", blending)
    ini_write_real("CONFIG", "shiftx", shiftx)
    ini_write_real("CONFIG", "shifty", shifty)
    ini_write_real("CONFIG", "shiftlock", shiftlock)
    startreset = 3
}
