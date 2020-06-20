/// @desc Deal damage
	
alarm[0] = period;
if --hit_count < 0
	instance_destroy()
	
if pokemon_id.shield <= 0
	instance_destroy()
