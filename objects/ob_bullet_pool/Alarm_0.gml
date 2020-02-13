/// @desc Do damage

var _d = 0
var _bullet = id

with ob_player 
if trainer != other.pokemon_id.trainer {
	_d = distance_to_object(other)// (other.x, other.y, x, y)
	if _d <= other.radius 
	with instance_create_layer(x, y, "Particles", ob_damage_area) {
		action = _bullet.action
		radius = 4
		pokemon_id = _bullet.pokemon_id
		hurt_time = _bullet.hurt_time
		var _spr = asset_get_index(action[? "ex_anim"])
		if sprite_exists(_spr) {
			image_blend =  _bullet.image_blend	
			sprite_index = _spr
		} else {
			timeout = 2
			sprite_index = noone
		}
	}
}

alarm_set(0, damage_period)
