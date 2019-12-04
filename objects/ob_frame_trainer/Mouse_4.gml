/// @desc 

// Inherit the parent event
event_inherited();


if is_undefined(name) or name=""
	exit
	
current_trainer = ds_map_create()
sc_load_trainer(name, current_trainer)

var _x, _y;
if not ds_exists(player1_trainer, ds_type_map) {
	player1_trainer = ds_map_create()
	ds_map_copy(player1_trainer, current_trainer)

	with ob_frame_trainer_1 {
		_x = x
		_y = y
		instance_destroy()
	}
	with sc_add_slot_composed(_x, _y, name, trainer_slot, ob_frame_trainer_1)
		event_perform(ev_other, ev_user0)
} else 
if not ds_exists(player2_trainer, ds_type_map) {
	player2_trainer = ds_map_create()
	ds_map_copy(player2_trainer, current_trainer)
	with ob_frame_trainer_2 {
		_x = x
		_y = y
		instance_destroy()
	}
	with sc_add_slot_composed(_x, _y, name, trainer_slot, ob_frame_trainer_2)
		event_perform(ev_other, ev_user0)
}

