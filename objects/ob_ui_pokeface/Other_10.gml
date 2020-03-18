/// @desc Update

// Inherit the parent event
event_inherited();

if sc_does_exist(list[| index]) {
	image_alpha = 1
	image_index = ds_map_find_value(list[| index], "face")
	//hint = string(image_index) + "; " + ds_map_find_value(list[| index], "title")
} else {
	image_alpha = 0	
	//hint = "FUCK YOU"
}

