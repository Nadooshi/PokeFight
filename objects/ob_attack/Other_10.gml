/// @desc Init

if not instance_exists(pokemon_id)
	exit

var _d = 0
pokemon_id.canMove = false
dir = pokemon_id.dir

// init hurt_time
if action[? "damage"] > 0
switch action[? "type"]{
	case _ATTACK_TYPE.lunge:{
		_d = (action[? "damage"] * 0.01)
		if _d < 0.1 _d = 0
		break
	}
	case _ATTACK_TYPE.range:
	case _ATTACK_TYPE.wave:
	case _ATTACK_TYPE.mortar:
	case _ATTACK_TYPE.melee:
	case _ATTACK_TYPE.cloud:
	case _ATTACK_TYPE.barrier:
	case _ATTACK_TYPE.front:
	case _ATTACK_TYPE.swoop:
	case _ATTACK_TYPE.ray:
	{
		_d = (action[? "damage"] * 0.01)
		if _d < 0.5 _d = 0.5	
		break
	}
	default: _d = 1
}
hurt_time = _d
event_inherited()

visible = true
