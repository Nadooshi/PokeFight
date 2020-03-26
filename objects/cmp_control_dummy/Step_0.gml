/// @desc 

if not canMove
	exit

array_copy(keys_before, 0, keys, 0, array_length_1d(keys))
prev_doMove = doMove

var _tmp = 0
var _d = 999
var _tmp_d = -1

for (var i = 0; i < instance_number(ob_player); i++) {
	_tmp = instance_find(ob_player, i)
	if _tmp.trainer != -1 {
		_tmp_d = distance_to_object(_tmp)
		if _tmp_d <_d
		if _tmp != id
			if _tmp.trainer != trainer {
				target = _tmp
				_d = _tmp_d
			}
	}
}

if instance_exists(target)  {
	direction = point_direction(x, y, target.x, target.y)
	if distance_to_object(target) > 5
		sc_player_move_set()
	else 
		sc_player_stop_set()
	tgX = target.x
	tgY = target.y
	
}
//scBehaviour = sc_player_stop_set()

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
if doActionNum < 0 exit
var _a_map = action_list[| doActionNum]
if not ds_exists(_a_map, ds_type_map) exit

if _a_map[? "type"] = _ATTACK_TYPE.barrier {
	tgX += _d*0.25 * sin(direction)
	tgY += _d*0.25 * cos(direction)
}

// bury
if canMove {
	if pokemon_map[?"digable"] > 0
	if asset_get_type(ob_player_buried) != "ob_player_burried"
		event_perform(ev_other, ev_user2)
	if _d > 5
		event_perform(ev_other, ev_user4)
}

