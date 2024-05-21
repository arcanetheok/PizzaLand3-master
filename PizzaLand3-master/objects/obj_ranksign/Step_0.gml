ini_open("saveData.ini")
global.floor1rank = ini_read_string("Ranks", "floor1", "none")
ini_close()
if (levelsign == 1)
{
    if (global.floor1rank == "none")
        visible = false
    else
        visible = true
    if (global.floor1rank == "s")
        image_index = 0
    if (global.floor1rank == "a")
        image_index = 1
    if (global.floor1rank == "b")
        image_index = 2
    if (global.floor1rank == "c")
        image_index = 3
    if (global.floor1rank == "d")
        image_index = 4
}
