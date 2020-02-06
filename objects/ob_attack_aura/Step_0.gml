/// @desc 

if not init 
	event_perform(ev_other, ev_user0)

event_inherited()

event_perform_object(ob_composed, ev_step, ev_step_normal)

if anim_ended
	instance_destroy()

