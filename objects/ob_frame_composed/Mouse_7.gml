/// @desc

if not edit_mode {
	// selecting
	edit_mode = not edit_mode
	ref_write(edit_value, name)
	if room_exists(previous_room) {
		var _rm = previous_room
		previous_room = noone
		
		room_goto(_rm)
	}
}
