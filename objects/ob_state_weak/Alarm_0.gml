/// @desc Deal damage

if pokemon_id.damage_mod > modify - 1
	pokemon_id.damage_mod = 1 - modify

alarm[0] = period;
if --hit_count < 0
	instance_destroy()
	
