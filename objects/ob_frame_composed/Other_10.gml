/// @desc

ini_open(trainer_path)

	if not ds_exists(current_trainer, ds_type_map)
		current_trainer = ds_map_create()
	ds_map_read(current_trainer, ini_read_string("trainers", name, ds_map_create()))
	
	for (var i=0; i<ui_objects_count; i++)
	with ui_objects[i] {
		edited_map = current_trainer
		event_perform(ev_other, ev_user0)
	}
	
ini_close()
