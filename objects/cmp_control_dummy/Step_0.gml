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

if instance_exists(selected_id)  {
	direction = point_direction(x, y, selected_id.x, selected_id.y)
	sc_player_move()
	tgX = selected_id.x
	tgY = selected_id.y
	
}
//scBehaviour = sc_player_stop_set()

if attack_timeout > 0 {
	attack_timeout -= dTime
	if attack_timeout <= 0 {
		doActionNum = random(ds_list_size(action_list))
		// do attack
		var _a_map = action_list[| doActionNum]
		if not is_undefined(_a_map)
			event_perform(ev_other, ev_user3)
		
		attack_timeout = random_range(2, 15)
	}

}

// bury
if canMove {
	if keys[k.Bury] and not keys_before[k.Bury]
		event_perform(ev_other, ev_user2)
	if keys[k.Fly ] and not keys_before[k.Fly ]
		event_perform(ev_other, ev_user4)
}

