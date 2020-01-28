/// @desc Init

// Inherit the parent event
event_inherited();

init = true
	
for (var i=0; i<dot_count; i++) {
	dot[i] = instance_create_layer(x, y, "Particles", ob_damage_area)
	with dot[i] {
		action = other.action
		pokemon_id = other.pokemon_id
		hurt_time = other.hurt_time
	}
}
