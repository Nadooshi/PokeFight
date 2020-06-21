/// @desc Update

// Inherit the parent event
event_inherited();

if sc_does_exist(list[| index]) {
	image_alpha = 1
	image_index = ds_map_find_value(list[| index], "face")
} else {
	image_alpha = 0	
}

