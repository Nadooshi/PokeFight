/// @desc 

// Inherit the parent event
event_perform_object(ob_composed, ev_draw, 0)


if sprite_exists(sprite_index) {
	draw_sprite(sp_shadowworld, 2, x, y + 8)
	draw_sprite_ext(sprite_index, image_index, x, y, 1.2, 1.2, 0, image_blend, 1)
}
