/// @desc 

if not init 
	event_perform(ev_other, ev_user0)

event_perform_object(object_get_parent(object_get_parent(object_index)), ev_step, ev_step_normal)

// move damage_area along
x = pokemon_id.x
y = pokemon_id.y
bullet.x = x + pokemon_id.hspeed * 3
bullet.y = y + pokemon_id.vspeed * 3


// sc_player_attack(_lunge)
timeout--
if timeout <=0 {
	pokemon_id.canMove = true
	pokemon_id.scBehaviour = sc_player_stop_set
	instance_destroy()
}
