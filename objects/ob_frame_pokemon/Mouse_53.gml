/// @desc

if not point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) {
	visible = false
	event_perform(ev_other, ev_user0)
}