/// @desc

// Inherit the parent event
event_inherited();

if not ds_exists(player1_trainer, ds_type_map) or
   not ds_exists(player2_trainer, ds_type_map) {
	show_message("Choose trainer, please!")
	exit
}
//	player2_trainer = sc_new_trainer()

// reload trainers
sc_clear_trainer(player1_trainer); player1_trainer = sc_new_trainer()
sc_clear_trainer(player2_trainer); player2_trainer = sc_new_trainer()
sc_load_trainer(ob_frame_trainer_1.name, player1_trainer)
sc_load_trainer(ob_frame_trainer_2.name, player2_trainer)

if ds_list_size(player1_trainer[? "active_pokemon_list"]) > 0 and
	ds_list_size(player2_trainer[? "active_pokemon_list"]) > 0
	room_goto(rm_battle)
else
	show_message("Cannot start battle! Either of trainers have no any active pokemon!")
