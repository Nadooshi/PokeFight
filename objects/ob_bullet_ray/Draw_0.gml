/// @desc 
if not init
	exit
	
if not sprite_exists(sprite_index)
	exit
	
// mid_value is image_yscale here
var _count = length / 8	
var _x = lengthdir_x(8, direction)
var _y = lengthdir_y(8, direction)
for (var i=0; i<_count; i++) {
	draw_sprite_ext(sprite_index, image_index, x1 + _x*i, y1 + _y*i, 1, mid_value, image_angle, image_blend, 1);
}
