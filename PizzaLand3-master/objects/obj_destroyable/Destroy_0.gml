if (ds_list_find_index(global.saveroom, id) == -1)
{
    instance_create((x + 16), y, obj_debris)
    instance_create((x + 16), y, obj_debris)
    instance_create((x + 16), y, obj_debris)
	instance_create((x + 16), y, obj_debris)
    instance_create((x + 16), y, obj_bangeffect)
    tile_layer_delete_at(1, x, y)
        scr_sound(sound_destroyblock1)
    ds_list_add(global.saveroom, id)
}
