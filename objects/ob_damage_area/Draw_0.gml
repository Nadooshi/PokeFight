/// @desc 
draw_set_alpha(0.25)
gpu_set_blendmode(bm_add)
draw_circle_color(x, y, radius, c_red, c_red, false)
gpu_set_blendmode(bm_normal)
draw_circle_color(x, y, radius, c_red, c_red, false)
draw_set_alpha(1)
