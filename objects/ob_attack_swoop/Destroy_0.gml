/// @desc 

event_inherited()

if instance_exists(bullet)
 	instance_destroy(bullet)
	
with pokemon_id 
	event_perform(ev_destroy, 0)	// revert


