/// @desc 
if not init
	exit
	
if not sprite_exists(sprite_index)
	exit
	
// mid_value is image_yscale here
var _count = length / 8	
var _x = lengthdir_x(8, direction)
var _y = lengthdir_y(8, direction)
var _x1 = x1 - lengthdir_x(8, direction-90) * mid_value
var _y1 = y1 - lengthdir_y(8, direction-90) * mid_value
for (var i=0; i<_count; i++) {
	draw_sprite_general(
		sprite_index, image_index, 0,0, 8, 16, _x1+_x*i, _y1+_y*i, 1, mid_value,
		image_angle, image_blend, image_blend, image_blend, image_blend, 1
	);
}
