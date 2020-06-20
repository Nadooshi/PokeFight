/// @desc 

draw_self()

if warm_coeff > 0 
	draw_sprite_ext(
	  sprite_index, image_index, x, y,
	  image_xscale, image_yscale * warm_coeff, 0, 0, warm_coeff*0.5+0.2
	);
