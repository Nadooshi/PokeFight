/// @desc

var _ok = false

_ok = point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)
with ob_frame_action {
	if _ok break
	_ok = point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)
}

if not _ok {
	visible = false
	sc_switch_view_pokemons()
	room_height = 1080
}
