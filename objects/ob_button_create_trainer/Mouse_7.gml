/// @desc

// Inherit the parent event
event_inherited();

ds_map_copy(current_trainer, trainer_preset)

trainer_fnames[trainer_count] = string_letters(current_trainer[? "name"])+".ini"
trainer_count++

sc_save_trainer()

room_goto(room_next(room))
