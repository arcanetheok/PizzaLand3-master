ini_open("saveData.ini")
ini_write_string("Audio", "MASTER", string(global.master_volume))
ini_write_string("Audio", "MUSIC", string(global.music_volume))
ini_write_string("Audio", "SFX", string(global.sfx_volume))
ini_close()