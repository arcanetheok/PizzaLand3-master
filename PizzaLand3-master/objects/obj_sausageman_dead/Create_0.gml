vsp = random_range(-7, -10)
hsp = (sign((x - obj_player.x)) * random_range(8, 15))
grav = 0.4
alarm[0] = 5
cigar = 0
stomped = 0
if (x != obj_player.x)
    image_xscale = (-(sign((x - obj_player.x))))
if image_xscale == 1
{
	image_angle = 25
}
if image_xscale != 1
{
	image_angle = -25
}