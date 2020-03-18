/// @desc Init

// Inherit the parent event
event_inherited();

with instance_create_layer(x, y, "Particles", ob_bullet_pool) {
	ds_map_copy(action, other.action)
	radius = (action[? "radius"] + 1) * 8
	pokemon_id = other.pokemon_id
	hurt_time = other.hurt_time
	timeout = action[? "range"] * 60
	sprite_index = asset_get_index(action[? "p_anim"])
	image_blend = sc_make_attack_colour(action)
}
