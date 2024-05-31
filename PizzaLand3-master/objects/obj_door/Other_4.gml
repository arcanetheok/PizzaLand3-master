if place_meeting(x, y, obj_player)
    visited = 1
if (ds_list_find_index(global.saveroom, id) == -1)
    sprite_index = spr_doorvisited
var _d = ["1", "2", "3", "4", "5"]
for (var i = 0; i < 4; i++) {
	var obj = asset_get_index("obj_targdoor" + _d[i])
	if place_meeting(x, y, obj)
		targetDoor = _d[i]
}