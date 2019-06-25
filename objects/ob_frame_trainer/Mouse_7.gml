/// @desc

if not edit_mode {
	ini_open(trainer_path)
		if not ds_exists(current_trainer, ds_type_map)
			current_trainer = ds_map_create()
		ds_map_read(current_trainer, ini_read_string("trainers", name, current_trainer))
	ini_close()
}

show_debug_message(room_get_name(room)+": current_trainer = " + string(current_trainer) + "; "+current_trainer[? "name"])
event_inherited();

