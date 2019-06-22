/// @desc

// Inherit the parent event
event_inherited();

if show_question("Really clear all saves?") {
	if file_delete("trainer_saves.ini")
		show_message("ini file deleted")
	trainer_count = 0
	trainer_arr = []
} else 
	show_message("nothing deleted")
