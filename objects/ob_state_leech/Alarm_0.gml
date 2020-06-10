/// @desc Deal damage

with pokemon_id {
	var _coeff = sc_check_resistance_dmg(id,other.action[? "element"],-1)
	var _dmg = other.damage * _coeff
	health_cur = max(0, health_cur - _dmg)
	sc_hurt(0);
}
with pokemon_id_attack
	if health_cur + _dmg < health_max {
		health_cur += _dmg
	} else {
		health_cur = health_max
	}


alarm[0] = period;
if --hit_count < 0
	instance_destroy()
	
