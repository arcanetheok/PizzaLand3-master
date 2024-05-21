var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
scrollbg_x += 2
scrollbg_y += 2
layer_x("Bg_scroll", scrollbg_x)
layer_y("Bg_scroll", scrollbg_y)
layer_x("Backgrounds_1", (_cam_x * 0.25))
layer_y("Backgrounds_1", (_cam_y * 0.25))
layer_x("Backgrounds_2", (_cam_x * 0.15))
layer_y("Backgrounds_2", (_cam_y * 0.15))
layer_x("Backgrounds_3", (_cam_x * 0.05))
layer_y("Backgrounds_3", (_cam_y * 0.05))
