/// @desc

// Inherit the parent event

if not ds_exists(map, ds_type_map)
	map = ds_map_create()
sc_load_trainer(name, map)	

event_inherited();
	
ds_map_destroy(map)
