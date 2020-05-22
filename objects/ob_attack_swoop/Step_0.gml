/// @desc 

if not init 
	event_perform(ev_other, ev_user0)

event_perform_object(ob_composed, ev_step, ev_step_normal)

if not instance_exists(pokemon_id) {
	instance_destroy()
	exit;
}

phi = pi * (1 - timeout/init_timeout)
_z = 12 + sin(phi) * z_max
_x = x 
_y = y - _z

pokemon_id.x = _x
pokemon_id.y = _y

timeout--
if timeout <=0 {
	pokemon_id.canMove = true
	pokemon_id.scBehaviour = sc_player_stop_set
	instance_destroy()
}
