/// @desc 

if not canMove
	exit

array_copy(keys_before, 0, keys, 0, array_length_1d(keys))
prev_doMove = doMove

//var newangle = 0

//// detect changes in control direction
//if not prev_doMove {
//	if doMove {
//		direction = newangle
//		tgAngle = direction
//		scBehaviour = sc_player_move_set
//	}
//} else {
//	if doMove
//		tgAngle = newangle
//	else
//		scBehaviour = sc_player_stop_set
//}

var _tmp = 0 
for (var i = 0; i < instance_number(ob_player); i++) {
	_tmp = instance_find(ob_player, i)
	if _tmp != id
		if _tmp.trainer != trainer 
		target = _tmp
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

// bury
if canMove {
	if keys[k.Bury] and not keys_before[k.Bury]
		event_perform(ev_other, ev_user2)
	if keys[k.Fly ] and not keys_before[k.Fly ]
		event_perform(ev_other, ev_user4)
}

