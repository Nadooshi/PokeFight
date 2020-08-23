/// @desc 

if not init 
	event_perform(ev_other, ev_user0)

event_perform_object(ob_composed, ev_step, ev_step_normal)

// move damage_area along
x = pokemon_id.x
y = pokemon_id.y
var _sz = 16
if pokemon_id.size = _SIZE.giant
	_sz = 24

bullet.x = x + lengthdir_x (_sz, pokemon_id.direction)
bullet.y = (y + 5) + lengthdir_y (_sz, pokemon_id.direction)

timeout--
if timeout <=0 {
	pokemon_id.canMove = true
	pokemon_id.scBehaviour = sc_player_stop_set
	instance_destroy()
}

if not instance_exists(pokemon_id) 
	instance_destroy()
