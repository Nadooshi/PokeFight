/// @desc 

if not canMove
	exit

array_copy(keys_before, 0, keys, 0, array_length_1d(keys))
prev_doMove = doMove

target = sc_find_nearest_target(id)
var _target_d = 0
if sc_does_exist(target) {
	_target_d = distance_to_point(target.x, target.y)
	direction = point_direction(x, y, target.x, target.y)
	if _target_d > 16 // 16
		sc_player_move_set()
	else 
		sc_player_stop_set()
	tgX = target.x
	tgY = target.y
}
//scBehaviour = sc_player_stop_set()

//// bury
//if canMove {
//	if pokemon_map[?"digable"] > 0
//	if position_stage != _ATTACK_TG.underground
//		event_perform(ev_other, ev_user2)
		
//	if _target_d > 5
//		event_perform(ev_other, ev_user4)
//}

if attack_timeout > 0 {
	attack_timeout -= dTime
	if instance_exists(target)
	if attack_timeout <= 0 {
		if doActionNum = -1 {
			doActionNum = irandom(ds_list_size(action_list)-1)
			// do attack
			event_perform(ev_other, ev_user3)
		}		
		attack_timeout = random_range(0.3, 1)
	}

}

// for barrier
if not instance_exists(target) exit
if doActionNum < 0 exit

var _a_map = action_list[| doActionNum]
if not ds_exists(_a_map, ds_type_map) exit

if _a_map[? "type"] = _ATTACK_TYPE.barrier {
	tgX += _target_d *0.25 * sin(direction)
	tgY += _target_d *0.25 * cos(direction)
}


