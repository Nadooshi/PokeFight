

var _a_map = action_list[| doActionNum]

switch (_a_map[? "type"]) {
	case _ATTACK_TYPE.lunge:
//		timeout = 24
//		canMove = false
		sc_player_stop_set()
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_lunge)
		
		direction = point_direction(x, y, tgX, tgY)
		tgAngle = direction
		moveSpeed = pokemon_map[? "ap"] * 0.66
		attack_ob_id.timeout = 60 * 0.1 * _a_map[? "range"]
		frameSpeed = 0
		scBehaviour = sc_player_attack_lunge
		break
	case _ATTACK_TYPE.range:
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_range)
		
		direction = point_direction(x, y, tgX, tgY)
		tgAngle = direction
		
		frameSpeed = 0
		// set direction image
		sc_player_move()
		break
	default:
//		timeout = 24
//		canMove = false
		sc_player_stop_set()
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack)
		scBehaviour = sc_player_attack
}

with attack_ob_id {
	action = _a_map
	pokemon_id = other.id
	sprite_index = asset_get_index(_a_map[? "anim"])
	image_blend = sc_make_attack_colour(_a_map)
}

