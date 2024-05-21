obj_player.state = 44
obj_player.image_index = 0
obj_player.sprite_index = obj_player.spr_Timesup
obj_tv.showtext = 1
obj_tv.message = "UH OH..."
obj_tv.alarm[0] = 150
ds_list_clear(global.baddieroom)
switch room
{
    case floor1_roomtreasure:
        global.minutes = 2
        global.seconds = 30
        break
    case 42:
        global.minutes = 2
        global.seconds = 40
        break
    case 58:
        global.minutes = 2
        global.seconds = 30
        break
    case 70:
        global.minutes = 2
        global.seconds = 0
        break
    case 82:
        global.minutes = 2
        global.seconds = 0
        break
}

global.wave = 0
global.maxwave = (((global.minutes * 60) + global.seconds) * 60)
if global.panicbg
    scr_panicbg_init()
