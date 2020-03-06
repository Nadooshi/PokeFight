/// @desc 

if not init 
	event_perform(ev_other, ev_user0)

event_inherited()

if instance_exists(bullet)
	bullet.radius += d_radius

if anim_ended
	instance_destroy()

