
var a_map = 0
var _ok = false

with ob_frame_inv {
	_ok = false
	if instance_exists(selected_id)
	if index <= ds_list_size(selected_id.action_list) {
		a_map = selected_id.action_list[| index]
		if not is_undefined(a_map) {
			map = a_map
			visible = true
			_ok = true
		}
	}
	if not _ok visible = false
	event_perform(ev_other, ev_user0)
} 
