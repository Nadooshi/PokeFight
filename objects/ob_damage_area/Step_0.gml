/// @desc 

var _trainer = pokemon_id.trainer
var _d = 0

ds_list_clear(last_damaged)

with ob_player 
if trainer != _trainer {
	_d = distance_to_point(other.x, other.y)
	if _d < other.radius {
		ds_list_add(other.last_damaged, id)
		if hurt_timeout <= 0 {
			hurt_timeout = other.hurt_time
			// execute damage
			var _dmg = sc_calculate_damage(other.action, pokemon_map)
			health_cur = max(0, health_cur - _dmg)
			hurt_cur += _dmg
			if health_cur = 0 
				instance_destroy()
		}
	}
}

if timeout>0 {
	timeout--
	if timeout<=0 
		instance_destroy()
}

