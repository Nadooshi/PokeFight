/// @desc

if ds_exists(edited_map, ds_type_map) {
	value_int = edited_map[? parameter_name]
	
	if not is_undefined(value_int) {
		image_index = value_int
		hint = string(value_int)
	}
}
