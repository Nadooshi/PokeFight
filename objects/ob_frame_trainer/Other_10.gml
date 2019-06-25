/// @desc

// Inherit the parent event

ini_open(trainer_path)

	if not ds_exists(map, ds_type_map)
		map = ds_map_create()
	ds_map_read(map, ini_read_string("trainers", name, map))
	
	event_inherited();
	
	ds_map_destroy(map)
ini_close()
