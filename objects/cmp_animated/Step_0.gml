/// @desc 

if not init
	event_perform(ev_other, ev_user0)

if p_looped {
	// loop anim
	if image_index >= (stop_frame-0.2)
		image_index = start_frame

} else {
	if image_index >= (stop_frame-0.2) 
		anim_ended = true
}
