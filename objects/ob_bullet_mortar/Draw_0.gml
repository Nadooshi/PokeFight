/// @desc 

// Inherit the parent event
event_inherited();

if sprite_exists(sprite_index) {
	draw_sprite(sp_shadowworld, 0, x, y-12)
	draw_sprite_ext(sprite_index, image_index, _x, _y, image_xscale, image_yscale, image_angle, image_blend, 1)
}
