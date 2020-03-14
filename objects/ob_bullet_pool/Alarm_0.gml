/// @desc Do damage

var _d = 0
var _bullet = id

with ob_player 
if instance_exists(other.pokemon_id)
if trainer != other.pokemon_id.trainer {
	_d = distance_to_object(other)// (other.x, other.y, x, y)
	if _d <= other.radius 
	if (other.action[? "tgTo"] & position_stage) != 0 
	with instance_create_layer(x, y, "Particles", ob_damage_area) {
		action = _bullet.action
		radius = 4
		pokemon_id = _bullet.pokemon_id
		hurt_time = _bullet.hurt_time
		image_blend =  _bullet.image_blend	
		timeout = 1
	}
}

alarm_set(0, damage_period)
