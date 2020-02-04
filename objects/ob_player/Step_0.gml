/// @desc 
event_inherited()

if not init
	event_perform(ev_other, ev_user0)

if script_exists(scBehaviour)
	script_execute(scBehaviour)
else
	sc_player_stop_set()

if hurt_timeout > 0 { 
	hurt_timeout -= dTime
}

if canMove
if power_cur < power_max
	power_cur += power_reg

if hurt_cur > 0 {
	hurt_cur = max(0, hurt_cur - (hurt_reg + health_reg))
	if health_cur < health_max
		health_cur += health_reg
}

