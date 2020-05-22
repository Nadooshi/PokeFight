

if doActionNum < 0 exit

var _a_map = action_list[| doActionNum]

if not ds_exists(_a_map, ds_type_map) exit

switch (_a_map[? "type"]) {
	case _ATTACK_TYPE.lunge:
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
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_range)
		direction = point_direction(x, y, tgX, tgY)
		tgAngle = direction
		canMove = false
		sc_player_stop_set()
		frameSpeed = 0
		scBehaviour = sc_player_attack_wait_anim
		// set direction image
		sc_player_move()
		break
	case _ATTACK_TYPE.wave:
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_wave)
		direction = point_direction(x, y, tgX, tgY)
		tgAngle = direction
		canMove = false
		sc_player_stop_set()
		frameSpeed = 0
		scBehaviour = sc_player_attack_wait_anim
		// set direction image
		sc_player_move()
		break
	case _ATTACK_TYPE.melee:
		direction = point_direction(x, y, tgX, tgY)
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_melee)
		attack_ob_id.direction = direction
		tgAngle = direction
		canMove = false
		sc_player_stop_set()
		frameSpeed = 0
		scBehaviour = sc_player_attack_wait_anim
		// set direction image
		sc_player_move()
		break		
	case _ATTACK_TYPE.front:
		direction = point_direction(x, y, tgX, tgY)
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_front)
		attack_ob_id.direction = direction
		tgAngle = direction
		timeout = 10
		canMove = false
		sc_player_stop_set()
		frameSpeed = 0
		scBehaviour = sc_player_attack_front
		// set direction image
		sc_player_move()
		// little lunge
		oX = x
		oY = y
		x = x + cos(degtorad(-direction)) * -2
		y = y + sin(degtorad(-direction)) * -2
		break
	case _ATTACK_TYPE.mortar:
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_mortar)
		direction = point_direction(x, y, tgX, tgY)
		tgAngle = direction
		canMove = false
		sc_player_stop_set()
		frameSpeed = 0
		scBehaviour = sc_player_attack_wait_anim
		// set direction image
		sc_player_move()
		break
	case _ATTACK_TYPE.aura:
		direction = 270
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_aura)
		attack_ob_id.direction = 0
		tgAngle = direction
//		timeout = 10
		canMove = false
		sc_player_stop_set()
		frameSpeed = 0
		scBehaviour = sc_player_attack_wait_anim
		// set direction image
		sc_player_move()
		break
	case _ATTACK_TYPE.pool:
		direction = point_direction(x, y, tgX, tgY)
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_pool)
		attack_ob_id.direction = 0
		tgAngle = direction
		canMove = false
		sc_player_stop_set()
		frameSpeed = 0
		scBehaviour = sc_player_attack_wait_anim
		// set direction image
		sc_player_move()
		break
	case _ATTACK_TYPE.cloud:
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_cloud)
		direction = point_direction(x, y, tgX, tgY)
		tgAngle = direction
		canMove = false
		sc_player_stop_set()
		frameSpeed = 0
		scBehaviour = sc_player_attack_wait_anim
		// set direction image
		sc_player_move()
		break
	case _ATTACK_TYPE.barrier:
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_barrier)
		direction = point_direction(x, y, tgX, tgY)
		tgAngle = direction
		canMove = false
		sc_player_stop_set()
		frameSpeed = 0
		scBehaviour = sc_player_attack_wait_anim
		// set direction image
		sc_player_move()
		break
	case _ATTACK_TYPE.swoop:
		canMove = false
		sc_player_stop_set()
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack_swoop)
		direction = point_direction(x, y, tgX, tgY)
		tgAngle = direction
		moveSpeed = pokemon_map[? "ap"] * 0.66

		var _t = 60 * 0.1 * _a_map[? "range"]
		var _d = 999
		if instance_exists(target)
			_d = distance_to_point(target.x, target.y) / 3 + 8
		 _t = min(_t, _d)
		attack_ob_id.timeout = _t //60 * 0.1 * action[? "range"]
		attack_ob_id.upgea = _t

		frameSpeed = 0
		scBehaviour = sc_player_attack_wait_anim
		break
	default:
//		timeout = 24
//		canMove = false
		sc_player_stop_set()
		attack_ob_id = instance_create_layer(x, y, "Particles", ob_attack)
		scBehaviour = sc_player_attack
}

with attack_ob_id {
	ds_map_copy(action, _a_map)
	pokemon_id = other.id
	_z = other._z
	sprite_index = asset_get_index(_a_map[? "anim"])
	image_blend = sc_make_attack_colour(_a_map)
}


