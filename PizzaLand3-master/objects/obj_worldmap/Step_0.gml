scr_getinput()
cam_x = camera_get_view_x(cam)
cam_y = camera_get_view_y(cam)
cam_w = camera_get_view_width(cam)
cam_h = camera_get_view_height(cam)
camera_set_view_pos(cam, lerp(cam_x, x - (cam_w / 2), 0.1), lerp(cam_y, y - (cam_h / 2), 0.1))
with obj_worldmapspot {
	if pointid = other.assignedpoint {
		other.targx = x
		other.targy = y
	}
}
x = lerp(x, targx, 0.1)
y = lerp(y, targy, 0.1)
if canmove {
	
}