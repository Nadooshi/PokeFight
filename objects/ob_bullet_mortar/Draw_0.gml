/// @desc 

// Inherit the parent event
event_perform_object(ob_composed, ev_draw, 0)


if sprite_exists(sprite_index) {
	draw_sprite(sp_shadowworld, 0, x, y-3)
	draw_sprite_ext(sprite_index, image_index, x, y-_z, image_xscale, image_yscale, image_angle, image_blend, 1)
}
