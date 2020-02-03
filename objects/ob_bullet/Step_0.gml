/// @desc 

// Inherit the parent event
event_inherited();

if not init {
	init = true
	event_perform(ev_other, ev_user0)
}
	

var _id = instance_position(x, y, ob_player)
if instance_exists(_id) {
	if pokemon_id.trainer != _id.trainer 
		instance_destroy()
}

timeout--
if timeout<=0 {
	instance_destroy()
}
