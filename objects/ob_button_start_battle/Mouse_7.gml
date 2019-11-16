/// @desc

// Inherit the parent event
event_inherited();

if not ds_exists(player1_trainer, ds_type_map)
	exit

if not ds_exists(player2_trainer, ds_type_map) 
	player2_trainer = sc_new_trainer()

room_goto(rm_battle)

