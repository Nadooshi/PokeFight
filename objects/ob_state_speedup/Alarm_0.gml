/// @desc Deal damage

if pokemon_id.speed_mod < modify
	pokemon_id.speed_mod = modify

alarm[0] = period;
if --hit_count < 0
	instance_destroy()
	
