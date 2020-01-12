/// @desc 

with instance_create_layer(x, y, "Particles", ob_damage_area) {
	action = other.action
	radius = (action[? "radius"] + 1) * 8
	pokemon_id = other.pokemon_id
	hurt_time = other.hurt_time
	var _spr = asset_get_index(action[? "ex_anim"])
	if sprite_exists(_spr) {
		image_blend =  other.image_blend	
		sprite_index = _spr
	} else {
		timeout = 5
		sprite_index = noone
	}
}
