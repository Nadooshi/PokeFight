/// @desc 

with instance_create_layer(pokemon_id_damaged.x, pokemon_id_damaged.y+12, "Particles", ob_damage_area) {
	ds_map_copy(action, other.action)
	accuracy_done_for = other.pokemon_id_damaged
	action[? "delay"] = 0
	radius = 1
	pokemon_id = other.pokemon_id_attack
	hurt_time = other.hurt_time
	damage_mod = other.damage_mod
	accuracy_mod = other.accuracy_mod
	
	var _spr = asset_get_index(action[? "ex_anim"])
	if sprite_exists(_spr) {
//		image_angle = other.direction
		image_blend =  other.image_blend	
		sprite_index = _spr
	} else {
		timeout = 2
		sprite_index = noone
	}
}
