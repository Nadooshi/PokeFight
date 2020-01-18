/// @desc 

var _trainer = pokemon_id.trainer
var _d = 0
with ob_player 
if trainer != _trainer {
	_d = distance_to_point(other.x, other.y)
	if _d < other.radius
	if hurt_timeout <= 0
		hurt_timeout = other.hurt_time
	
	// execute damage
	//sc_calculate_damage(other.action, pokemon_id)
	
}

if timeout>0 {
	timeout--
	if timeout<=0 
		instance_destroy()
}

