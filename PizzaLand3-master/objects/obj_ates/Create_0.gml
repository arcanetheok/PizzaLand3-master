testing = 1
control_fixture = physics_fixture_create()
persistent = 1
depth = -999
physics_fixture_set_awake(control_fixture, 1)
zx = 800
zy = 390
xx = 680
xy = 420
cx = 820
cy = 280
cuntroller = false
debugx = 780
debugy = 4
escx = 875
escy = 4
shiftx = 700
shifty = 300
button_scale = 3.3
joy_scale = 3.3
joy_posx = 48
joy_posy = 312.5
joy_center_x = (joy_posx + (((59 * joy_scale) / 2) - ((41 * joy_scale) / 2)))
joy_center_y = (joy_posy + (((59 * joy_scale) / 2) - ((41 * joy_scale) / 2)))
joy_size = 19.675
back_size = 12
blending = 0.3
pause = 0
section = 0
cool = 1
skinselect = 0
isoncontroller = 0
reset = 0
shiftlock = 0
debugbutton = 0
if file_exists("touch.ini")
{
    ini_open("touch.ini")
    zx = ini_read_real("CONFIG", "zx", 0)
    zy = ini_read_real("CONFIG", "zy", 0)
    xx = ini_read_real("CONFIG", "xx", 0)
    xy = ini_read_real("CONFIG", "xy", 0)
    cx = ini_read_real("CONFIG", "cx", 0)
    cy = ini_read_real("CONFIG", "cy", 0)
    shiftx = ini_read_real("CONFIG", "shiftx", 0)
    shifty = ini_read_real("CONFIG", "shifty", 0)
    joy_posx = ini_read_real("CONFIG", "joy_posx", 0)
    joy_posy = ini_read_real("CONFIG", "joy_posy", 0)
    button_scale = ini_read_real("CONFIG", "button_scale", 0)
    joy_scale = ini_read_real("CONFIG", "joy_scale", 0)
    blending = ini_read_real("CONFIG", "blending", 0)
    skinselect = ini_read_real("CONFIG", "skin", 0)
    performance = ini_read_real("CONFIG", "musicoff", 0)
    shiftlock = ini_read_real("CONFIG", "shiftlock", 0)
    debugbutton = ini_read_real("CONFIG", "debugbutton", 0)
    ini_close()
}
//if (os_type == os_windows)
//    cursor_sprite = spr_editor_cursor
if ((os_type != os_android && os_type != os_ios && os_type != os_windows) || (os_type == os_windows && testing == 0))
    instance_destroy()
goback = 0
shiftheld = 0
performance = 0
isdebug = 0
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
isinoptions = 0
joy_scaleplace = joy_scale
button_scaleplace = button_scale
blendingplace = blending
ateseditv2 = 0
atesreset = 50
startreset = 0
