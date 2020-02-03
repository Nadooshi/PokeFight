/// @desc 

// Inherit the parent event
event_inherited();

if not init 
	event_perform(ev_other, ev_user0)

//var _id = instance_position(x, y, ob_player)
//if instance_exists(_id) {
//	if pokemon_id.trainer != _id.trainer 
//		instance_destroy()
//}

phi = pi * (1 - timeout/init_timeout)
_z = 12 + sin(phi) * z_max
_x = x 
_y = y - _z

timeout--
if timeout<=0 {
	instance_destroy()
}
