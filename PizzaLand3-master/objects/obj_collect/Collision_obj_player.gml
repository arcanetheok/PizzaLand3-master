//choose((scr_sound sound_points)), (scr_sound sound_points2), (scr_sound sound_points3))
scr_sound(sound_points3)
global.collect += 10
global.pizzameter += 1
instance_create(x, y, obj_10)
instance_destroy()
