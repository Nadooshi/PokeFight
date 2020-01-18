/// @desc 

// Inherit the parent event
event_inherited();

var _id = instance_position(x, y, ob_player)
if instance_exists(_id) {
	if pokemon_id.trainer != _id.trainer 
		instance_destroy()
}

timeout--
if timeout<=0 {
	instance_destroy()
}
