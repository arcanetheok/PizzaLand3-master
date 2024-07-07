//for (var i = 9; i > 0; i++){
//with instance_create(blah, blah, blah) sprite_index = spr_bigdebris
//}
if (ds_list_find_index(global.saveroom, id) == -1)
{
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_bigdebris
	with (instance_create((x + 32), (y + 32), obj_bangeffect))
		depth = -5
    tile_layer_delete_at(1, x, y)
    tile_layer_delete_at(1, (x + 32), y)
    tile_layer_delete_at(1, (x + 32), (y + 32))
    tile_layer_delete_at(1, x, (y + 32))
	//scr_sound(choose(sound_destroyblock1, sound_destroyblock2))
	scr_sound(sound_destroyblock2)
    ds_list_add(global.saveroom, id)
}
