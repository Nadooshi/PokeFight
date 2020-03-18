/// @desc 

event_inherited()

if parameter_name != "" {
	if sc_does_exist(map) {
		image_index = map[? parameter_name]
		hint = attack_type_text[map[? parameter_name]]
	}
}

