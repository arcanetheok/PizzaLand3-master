var _d = ["1", "2", "3", "4", "5"]
for (var i = 0; i < 4; i++) {
	var obj = asset_get_index("obj_targdoor" + _d[i])
	if targetDoor == _d[i] {
		if hallway
			x = obj.x + (hallwaydirection * 100)
		else
			x = obj.x + 32
		y = (obj.y - 14)
	}
}

hallway = 0;
if (global.shroomfollow == 1)
    instance_create(x, y, obj_pizzakinshroom)
if (global.cheesefollow == 1)
    instance_create(x, y, obj_pizzakincheese)
if (global.tomatofollow == 1)
    instance_create(x, y, obj_pizzakintomato)
if (global.sausagefollow == 1)
    instance_create(x, y, obj_pizzakinsausage)
if (global.pineapplefollow == 1)
    instance_create(x, y, obj_pizzakinpineapple)

if room = pivhouse //|| room = hub
	global.hub = 1
else
	global.hub = 0