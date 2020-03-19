/// @desc 

event_perform_object(ob_composed, ev_draw, 0)

if sprite_exists(sprite_index) {
	var _scale = c_radius*2 / sprite_get_width(sprite_index)
	var _alpha = min(radius / c_radius * 0.5, 1)
	draw_sprite_ext(sprite_index, image_index, x, y, _scale, _scale, 0, image_blend, _alpha)
}
draw_ellipse(x - c_radius - 8, y - c_radius - 8,  x + c_radius + 8, y + c_radius + 8, true)
