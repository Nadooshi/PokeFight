/// @desc

event_inherited();

show_debug_message(object_get_name(object_index) + ": " + room_get_name(room)+": current_trainer = " + string(current_trainer) + "; map = "+string(map))

if not edit_mode {
	ini_open(trainer_path)
		ds_map_read(current_trainer, ini_read_string("trainers", name, noone))
	ini_close()
}

