/// @desc 

// Inherit the parent event
event_inherited();

if parameter_name != "" {
	if not is_undefined(map) and ds_exists(map, ds_type_map) {
		var _abil = map[? "active"]
		if not is_undefined(_abil) and ds_exists(_abil, ds_type_map) {
			image_index = _abil[? parameter_name]
			//hint = attack_type_text[map[? parameter_name]]
		}
	}
}

