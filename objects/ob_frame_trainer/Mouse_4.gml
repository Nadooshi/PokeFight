/// @desc

event_inherited();

show_debug_message(object_get_name(object_index) + ": " + room_get_name(room)+": current_trainer = " + string(current_trainer) + "; map = "+string(map))

/// replace by sc_load_trainer
sc_load_trainer(name, current_trainer)

