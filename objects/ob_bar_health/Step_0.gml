/// @desc

if instance_exists(pokemon_id) {
	value = pokemon_id.health_cur
	value2 = pokemon_id.hurt_cur
} else
	instance_destroy()
