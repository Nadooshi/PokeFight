/// @desc 

if not init
	event_perform(ev_other, ev_user0)

if p_looped {
	// loop anim
	if image_index >= (stop_frame-sprite_speed)
		image_index = start_frame

} else 
	if image_index >= (stop_frame-sprite_speed) {
		anim_ended = true
		image_speed = 0
}


if p_ray {
	var _current_frac = 1 - (timeout / init_timeout)
	if _current_frac > fraction {
		phase++
		prev_frac = fraction
		switch phase {
		case 1:
			fraction = 1
			start_value = end_value
			end_value = 0
			mid_value = start_value
		}
	}
	// interpolate values
	mid_value = start_value + ( (end_value-start_value) * power((_current_frac - prev_frac)/(fraction - prev_frac), 3) )
}


