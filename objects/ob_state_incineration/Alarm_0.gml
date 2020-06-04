/// @desc Deal damage

with pokemon_id
	sc_hurt(other.damage);


alarm[0] = period;
if --hit_count < 0
	instance_destroy()
	
