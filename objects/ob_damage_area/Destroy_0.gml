/// @desc Do chain damage

// Inherit the parent event
event_inherited();

if sc_does_exist(chain_dmg_target) {
	with instance_create_layer(chain_dmg_target.x, chain_dmg_target.y, "Particles", ob_pivot) {
		ds_map_copy(action, other.action)
		action[? "range"] *= 0.5
		pokemon_id = other.pokemon_id
		hurt_time = other.hurt_time
		timeout = 1
	}
}
