/// @desc

// Inherit the parent event
event_perform_object(ob_composed, ev_draw, 0)

draw_set_alpha(0.25)
draw_sprite(sp_shadowworld, size, x, y + 12)
draw_set_alpha(1)
//if hurt_timeout > 0 {
//	draw_set_color(c_red)
//	draw_set_alpha(0.25)
//	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false)
//	draw_set_color(c_white)
//	draw_set_alpha(1)
//}

draw_sprite_ext(sprite_index, image_index, x, y-_z, image_xscale, image_yscale, image_angle, image_blend, image_alpha)


