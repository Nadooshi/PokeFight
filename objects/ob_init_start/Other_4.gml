/// @desc

trainer_slot = sc_create_slot_composed(fr_trainer_slot)

sc_load_trainer_fnames()
sc_create_trainer_slots()

if ds_exists(player1_trainer, ds_type_map)
with ob_frame_trainer_1 {
	sc_add_slot_composed(x, y, player1_trainer[? "name"] , trainer_slot, ob_frame_trainer_1) 
	instance_destroy()
}

if ds_exists(player2_trainer, ds_type_map)
with ob_frame_trainer_2 {
	sc_add_slot_composed(x, y, player2_trainer[? "name"] , trainer_slot, ob_frame_trainer_2) 
	instance_destroy()
}
sc_refresh_ui()

