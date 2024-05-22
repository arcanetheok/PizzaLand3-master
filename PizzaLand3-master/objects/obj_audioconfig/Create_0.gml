ini_open("saveData.ini")
global.master_volume = ini_read_string("Audio", "MASTER", 1)
global.music_volume = ini_read_string("Audio", "MUSIC", 1)
global.sfx_volume = ini_read_string("Audio", "SFX", 0.8)
ini_close()
selected = 0
cursor_x = window_get_width() / 2
cursor_y = 0;
depth = -800
draw_index = 0