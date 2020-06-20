/// @desc 

if not init 
	event_perform(ev_other, ev_user0)

event_perform_object(ob_composed, ev_step, ev_step_normal)

if not instance_exists(bullet) {
	pokemon_id.canMove = true
	pokemon_id.scBehaviour = sc_player_stop_set
	instance_destroy()
	exit
}

x  = bullet.x
y  = bullet.y
_z = bullet._z
pokemon_id.x  = bullet.x
pokemon_id.y  = bullet.y
pokemon_id._z = bullet._z

if not instance_exists(pokemon_id)
	instance_destroy()
