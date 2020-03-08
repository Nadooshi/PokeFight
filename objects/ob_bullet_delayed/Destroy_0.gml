/// @desc 


with instance_create_layer(x, y, "Particles", ob_damage_area) {
	action = ds_map_create()
	ds_map_copy(action, other.action)
	action[? "delay"] = 0
	radius = 8
	pokemon_id = other.pokemon_id_attack
	hurt_time = other.hurt_time
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
