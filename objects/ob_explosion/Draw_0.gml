/// @desc 

switch phase {
case 0:
	image_alpha = 1
	draw_self()
	gpu_set_blendmode(bm_add)
	for (var i=-1; i<=1; i++)
	for (var j=-1; j<=1; j++)
		draw_sprite_ext(sprite_index, init_image_index, x-i*2, y-j*2, image_xscale, image_yscale, 0, c_white, flash_alpha)
	gpu_set_blendmode(bm_normal)
	break
case 1:
	draw_self()
	gpu_set_blendmode(bm_add)
	for (var i=-1; i<=1; i++)
	for (var j=-1; j<=1; j++)
		draw_sprite_ext(init_sprite_index, init_image_index, x-i*2, y-j*2, image_xscale, image_yscale, 0, c_white, flash_alpha)
	gpu_set_blendmode(bm_normal)
	break
case 2:
	if image_index >= image_number - 1 {
		image_index = image_number - 4	
	}
	
	draw_self()
}
