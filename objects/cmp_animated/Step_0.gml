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

if p_ray 
if point_distance(sx,sy, x, y) >= sprite_get_width(sprite_index) * image_xscale * 0.5 - 1 {
	sx = x
	sy = y
	with instance_copy(false) {
		instance_change(ob_particle, false)
		sc_composed_remove_all_components()
		sprite_index = other.sprite_index
		event_perform(ev_create, 0)
		image_speed = 1
		d_alpha = -0.015
		frame_count = sprite_get_number(sprite_index)
		stop_frame = frame_count
		p_looped = true
		init = true
	}
}

