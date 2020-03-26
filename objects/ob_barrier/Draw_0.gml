/// @desc 

// Inherit the parent event
event_perform_object(ob_composed, ev_draw, 0)


if sprite_exists(sprite_index) {
	draw_sprite(sp_shadowworld, 2, x, y + 8)
	draw_sprite_ext(sprite_index, image_index, x, y, 1.2, 1.2, 0, image_blend, 1)
}


var _w = (32/health_max * health_cur)
draw_set_color(c_aqua)
draw_rectangle(x-16, y-16, x-16 + _w, y-15, true)
draw_set_color(c_white)

if hurt_timeout > 0 {
	draw_set_color(c_red)
	draw_set_alpha(0.25)
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false)
	draw_set_color(c_white)
	draw_set_alpha(1)
}
