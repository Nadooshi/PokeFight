/// @desc
event_inherited()

draw_sprite(sp_shadowworld, shadowFrame, x, y)
if hurt_timeout > 0 {
	draw_set_color(c_red)
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false)
	draw_set_color(c_white)
}

draw_self()

