/// @desc Update

// Inherit the parent event
event_inherited();

if not is_undefined(list[| index]) and ds_exists(list[| index], ds_type_map) {
	image_alpha = 1
	image_index = ds_map_find_value(list[| index], "face")
	//hint = string(image_index) + "; " + ds_map_find_value(list[| index], "title")
} else {
	image_alpha = 0	
	//hint = "FUCK YOU"
}

