/// @desc 

if not init
	event_perform(ev_other, ev_user0)

event_inherited()

if script_exists(scBehaviour)
	script_execute(scBehaviour)
//else
//	sc_player_stop_set()

if hurt_timeout > 0 { 
	hurt_timeout -= dTime
}

if canMove
if attack_warmup <= 0
if power_cur < power_max
	power_cur += power_reg

if hurt_cur > 0 {
	hurt_cur = max(0, hurt_cur - (hurt_reg + health_reg))
	if health_cur < health_max
		health_cur += health_reg
}

if attack_warmup > 0 {
	attack_warmup -= dTime
	// charge is over
	if attack_warmup <= 0 {
		if object_index = ob_player_buried
			event_perform(ev_other, ev_user2)
		sc_player_attack_set()
		doActionNum = -1
	}
}
