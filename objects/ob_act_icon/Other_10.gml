/// @desc 

if parameter_name != "" {
	if not is_undefined(map) and ds_exists(map, ds_type_map) {
		image_index = map[? parameter_name]
		hint = attack_type_text[map[? parameter_name]]
	}
}

