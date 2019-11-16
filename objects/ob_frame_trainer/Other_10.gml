/// @desc

// Inherit the parent event


map = ds_map_create()

//if not is_undefined(name) and is_string(name) and name != ""
	sc_load_trainer(name, map)	

event_inherited();
	
sc_clear_trainer(map)
