/// @desc 

if not init 
	event_perform(ev_other, ev_user0)

event_inherited()

if not instance_exists(pokemon_id)
	exit

if anim_ended
	instance_destroy()
