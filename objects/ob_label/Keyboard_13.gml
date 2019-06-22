/// @desc

if editing
if parameter_name != "" {
	value_str = keyboard_string
	if ds_exists(edited_map, ds_type_map)
		edited_map[? parameter_name] = value_str
		
	event_perform(ev_other, ev_user0)
}

editing = false

image_blend = c_white
