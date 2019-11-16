/// @desc

event_inherited();

sc_clear_trainer(current_trainer)
current_trainer = ds_map_create()
sc_load_trainer(parent.name, current_trainer)

