/// @desc Move camera

var _x, _y;
var _cx, _cy;
_cx = camera_get_view_x(view_camera[0])
_cy = camera_get_view_y(view_camera[0])

if instance_exists(selected_id) {
	_x = selected_id.x - camera_get_view_width(view_camera[0]) * 0.5
	_y = selected_id.y - camera_get_view_height(view_camera[0]) * 0.5
	_x = clamp(_x, 0, room_width -camera_get_view_width(view_camera[0]))
	_y = clamp(_y, 0, room_height-camera_get_view_height(view_camera[0]))
	camera_set_view_pos(view_camera[0], _x, _y )
} else {
	camera_set_view_pos(view_camera[0], _cx, _cy)	
}


