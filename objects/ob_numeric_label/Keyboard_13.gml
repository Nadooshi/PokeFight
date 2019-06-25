/// @desc

if editing
if parameter_name != "" {
	if string_digits(keyboard_string)=""
		value_int = 0
	else
		value_int = real(string_digits(keyboard_string))
		
	if ds_exists(map, ds_type_map)
		map[? parameter_name] = value_int
		
	event_perform(ev_other, ev_user0)
}

editing = false

image_blend = c_white
