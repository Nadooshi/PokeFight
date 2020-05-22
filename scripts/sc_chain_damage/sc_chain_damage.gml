/// of ob_damage_area

var _chain_dmg_target_id = noone

if ds_list_size(last_damaged) > 0
if action[? "bullet_phys"] = _BULLET_PH.chain {
	
	var _range = action[? "range"] * 6 * 3
	_chain_dmg_target_id = sc_find_nearest_target(pokemon_id, action[? "affect"], _range, action[? "tgTo"], last_damaged)
	
	if sc_does_exist(_chain_dmg_target_id) {
		var _dist = distance_to_point(_chain_dmg_target_id.x, _chain_dmg_target_id.y)
		var _dir  = point_direction(x, y, _chain_dmg_target_id.x, _chain_dmg_target_id.y)
		with instance_create_layer(x, y, "Particles", ob_particle) {
			sprite_index = sp_chain
			image_xscale = _dist / sprite_get_width(sprite_index)
			image_blend = sc_make_attack_colour(other.action)
			direction = _dir
		}
	}
}

return _chain_dmg_target_id
