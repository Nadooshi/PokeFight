/// @desc 

// Inherit the parent event
event_inherited();

if sc_does_exist(map) {
	if sc_does_exist(map[? "active"])
		ds_map_destroy(map[? "active"])
	
	ds_map_destroy(map)
}
