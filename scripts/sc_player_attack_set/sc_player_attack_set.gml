

var _a_map = action_list[| doActionNum]


if _a_map[? "ap"] > power_cur exit

switch (_a_map[? "type"]) {
	case _ATTACK_TYPE.lunge:
		power_cur -= _a_map[? "ap"]
		canMove = false
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
		power_cur -= _a_map[? "ap"]
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_range)
		direction = point_direction(x, y, tgX, tgY)
		tgAngle = direction
		timeout = 5
		canMove = false
		sc_player_stop_set()
		frameSpeed = 0
		// set direction image
		scBehaviour = sc_player_attack_range
		sc_player_move()
		break
	case _ATTACK_TYPE.wave:
		power_cur -= _a_map[? "ap"]
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_wave)
		direction = point_direction(x, y, tgX, tgY)
		tgAngle = direction
		timeout = 5
		canMove = false
		sc_player_stop_set()
		frameSpeed = 0
		// set direction image
		scBehaviour = sc_player_attack_wave
		sc_player_move()
		break
	case _ATTACK_TYPE.front:
		power_cur -= _a_map[? "ap"]
		direction = point_direction(x, y, tgX, tgY)
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_front)
		attack_ob_id.direction = direction
		tgAngle = direction
		timeout = 10
		canMove = false
		sc_player_stop_set()
		frameSpeed = 0
		// set direction image
		scBehaviour = sc_player_attack_front
		sc_player_move()
		// little lunge
		oX = x
		oY = y
		x = x + cos(degtorad(-direction)) * -2
		y = y + sin(degtorad(-direction)) * -2
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

