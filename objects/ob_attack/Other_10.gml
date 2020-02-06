/// @desc Init
var _d = 0
init = true
pokemon_id.canMove = false
dir = pokemon_id.dir

// init hurt_time
if action[? "damage"] > 0
switch action[? "type"]{
	case _ATTACK_TYPE.melee:
	case _ATTACK_TYPE.front: {
		_d = (action[? "damage"] * 0.01)
		if _d < 0.3 _d = 0.3
		break
	}
	case _ATTACK_TYPE.range:
	case _ATTACK_TYPE.wave:
	case _ATTACK_TYPE.mortar:
	case _ATTACK_TYPE.lunge:{
		_d = (action[? "damage"] * 0.01)
		if _d < 0.1 _d = 0.1	
		break
	}
	default: _d = 1
}

hurt_time = _d
event_inherited()

visible = true
