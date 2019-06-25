/// @desc

if ds_exists(map, ds_type_map) {
	value_int = map[? parameter_name]
	
	if not is_undefined(value_int) {
		image_index = value_int
		hint = string(value_int)
	}
} else 
	show_debug_message("No map! (" + room_get_name(room) +": "+ object_get_name(object_index)+ ":  map = " + string(map)+"; current_trainer = "+string(current_trainer) + ")")

//show_debug_message(room_get_name(room) +": "+ object_get_name(object_index)+ ":  map = " + string(map)+"; current_trainer = "+string(current_trainer))
