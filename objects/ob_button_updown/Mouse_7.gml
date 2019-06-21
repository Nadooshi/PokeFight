/// @desc

// Inherit the parent event
event_inherited();


if ds_exists(edited_map, ds_type_map) 
	value_int = edited_map[? parameter_name]
	
value_int += increment
if wrap {
	if value_int > max_value
		value_int = min_value
	if value_int < min_value
		value_int = max_value
} else
	value_int = clamp(value_int, min_value, max_value)

if ds_exists(edited_map, ds_type_map) 
	edited_map[? parameter_name] = value_int

if instance_exists(dependent_control)
	with dependent_control
		event_perform(ev_other, ev_user0)
		