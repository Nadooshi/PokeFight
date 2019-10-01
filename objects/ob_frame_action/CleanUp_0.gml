/// @desc 

// Inherit the parent event
event_inherited();

if not is_undefined(map) and ds_exists(map, ds_type_map) {
	if not is_undefined(map[? "active"]) and ds_exists(map[? "active"], ds_type_map)
		ds_map_destroy(map[? "active"])
	
	ds_map_destroy(map)
}
