/// @desc

// Inherit the parent event
event_inherited();

ds_map_copy(current_trainer, trainer_preset)

trainer_arr[trainer_count] = current_trainer[? "name"]
trainer_count++

sc_save_trainer()

room_goto(room_next(room))
