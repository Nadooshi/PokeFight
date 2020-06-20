/// @desc Deal damage

if pokemon_id.dodge_mod > modify
	pokemon_id.dodge_mod = modify

alarm[0] = period;
if --hit_count < 0
	instance_destroy()
	
