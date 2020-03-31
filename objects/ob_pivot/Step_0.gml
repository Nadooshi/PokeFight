/// @desc 

// Inherit the parent event
event_perform_object(ob_composed, ev_step, ev_step_normal)

coll_area.image_xscale = radius / 8
coll_area.image_yscale = radius / 8

if timeout>0 {
	timeout--
	if timeout<=0 
		instance_destroy()
}

