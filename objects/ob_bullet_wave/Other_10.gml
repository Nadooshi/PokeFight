/// @desc Init

// Inherit the parent event
event_inherited();

for (var i=0; i<dot_count; i++) {
	dot[i] = instance_create_layer(x, y, "Particles", ob_pivot)
	with dot[i] {
		ds_map_copy(action, other.action)
		pokemon_id = other.pokemon_id
		hurt_time = other.hurt_time
	}
}
