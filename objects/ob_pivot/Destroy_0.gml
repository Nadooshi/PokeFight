/// @desc 

event_perform_object(ob_composed, ev_destroy, 0)

with instance_create_layer(x, y, "Particles", ob_damage_area) {
	ds_map_copy(action, other.action)
	accuracy_done_for = other.accuracy_done_for
	radius = other.radius 
	pokemon_id = other.pokemon_id
	hurt_time = other.hurt_time
	timeout = 1
}

