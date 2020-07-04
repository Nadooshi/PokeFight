/// @desc Deal damage

with pokemon_id {
	if damage_mod > 0.5 // half all state in stun
		damage_mod = 0.5
	speed_mod = maxSpeed * -0.5
	moveSpeed = max(0.25, maxSpeed + speed_mod)
	if dodge_mod < 0.5
		dodge_mod = 0.5
	if accuracy_mod > -0.5
		accuracy_mod = -0.5
	power_reg = 0.1 // 0.3
}

alarm[0] = period;
if --hit_count < 0
	instance_destroy()
	
