/// @desc

wind_dir += wind_d_dir
wind_d_dir *= 0.95

with ob_bullet 
if sc_does_exist(action) {
	if action[? "bullet_phys"] = _BULLET_PH.soft {
		x += cos(other.wind_dir) * other.wind_power
		y += sin(other.wind_dir) * other.wind_power
	}
}

with ob_player
if position_stage = _ATTACK_TG.air {
	x += cos(other.wind_dir) * other.wind_power * 0.5
	y += sin(other.wind_dir) * other.wind_power * 0.5
}
