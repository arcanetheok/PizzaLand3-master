with (obj_worldmap)
{
    if (key_slap2)
    {
        mach2 = 0
        obj_camera.chargecamera = 0
        ds_list_add(global.saveroom, id)
        targetDoor = other.targetDoor
        targetRoom = other.targetRoom
        other.visited = 1
        image_index = 0
        state = 71
        instance_create(x, y, obj_fadeout)
    }
}
