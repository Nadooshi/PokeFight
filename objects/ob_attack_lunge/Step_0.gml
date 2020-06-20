/// @desc 

if not init 
	event_perform(ev_other, ev_user0)

event_perform_object(ob_composed, ev_step, ev_step_normal)

// move damage_area along
x = pokemon_id.x
y = pokemon_id.y
bullet.x = x + 16 * cos(degtorad(pokemon_id.direction))
bullet.y = (y + 5) + 16 * sin(degtorad(pokemon_id.direction)) //pokemon_id.vspeed * 2.5


// sc_player_attack(_lunge)
timeout--
if timeout <=0 {
	pokemon_id.canMove = true
	pokemon_id.scBehaviour = sc_player_stop_set
	instance_destroy()
}

if not instance_exists(pokemon_id) 
	instance_destroy()
