/// @desc 

if not init 
	event_perform(ev_other, ev_user0)

event_inherited()

event_perform_object(object_get_parent(object_get_parent(object_index)), ev_step, ev_step_normal)

if anim_ended
	instance_destroy()

