/// @desc 

switch ob_scroll_control.view_index {
case 1: 
	if show_question("Really return to previous room?")
		room_goto_previous()
	break
case 2: 
	event_perform_object(ob_backpack, ev_mouse, ev_left_release)	
}

