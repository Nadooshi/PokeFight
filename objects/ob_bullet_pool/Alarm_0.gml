/// @desc Do damage

var _d = 0
var _bullet = id

with ob_player {
	_d = distance_to_object(other)
	if _d <= other.radius {
		if sc_check_affect(_bullet.pokemon_id, id, _bullet.action[? "affect"])
		if sc_check_accuracy(_bullet, id, _bullet.action)
		if (_bullet.action[? "tgTo"] & position_stage) != 0 
		with instance_create_layer(x, y, "Particles", ob_damage_area) {
			ds_map_copy(action, _bullet.action)
			radius = 4
			pokemon_id = _bullet.pokemon_id
			hurt_time = _bullet.hurt_time
			damage_mod = _bullet.damage_mod
			accuracy_mod = _bullet.accuracy_mod
			image_blend =  _bullet.image_blend	
			timeout = 1
		}
	}
}

alarm_set(0, damage_period)
