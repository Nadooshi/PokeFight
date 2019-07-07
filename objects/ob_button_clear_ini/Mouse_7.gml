/// @desc

// Inherit the parent event
event_inherited();

if show_question("Really clear all saves?") {
	if directory_exists("trainer_saves") {
		directory_destroy("trainer_saves")
		show_message("save folder cleared")
	}
	trainer_count = 0
	trainer_fnames = []
} else 
	show_message("nothing deleted")
