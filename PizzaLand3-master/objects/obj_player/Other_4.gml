if targetDoor == "1" {
	if hallway
		x = obj_targdoor1.x + (hallwaydirection * 100)
	else
		x = obj_targdoor1.x + 32
	y = (obj_targdoor1.y - 14)
}
if targetDoor == "2" {
	if hallway
		x = obj_targdoor2.x + (hallwaydirection * 100)
	else
		x = obj_targdoor2.x + 32
	y = (obj_targdoor2.y - 14)
}
if targetDoor == "3" {
	if hallway
		x = obj_targdoor3.x + (hallwaydirection * 100)
	else
		x = obj_targdoor3.x + 32
	y = (obj_targdoor3.y - 14)
}
if targetDoor == "4" {
	if hallway
		x = obj_targdoor4.x + (hallwaydirection * 100)
	else
		x = obj_targdoor4.x + 32
	y = (obj_targdoor4.y - 14)
}
if targetDoor == "5" {
	if hallway
		x = obj_targdoor5.x + (hallwaydirection * 100)
	else
		x = obj_targdoor5.x + 32
	y = (obj_targdoor5.y - 14)
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
