/// @desc 

event_inherited()
if sc_does_exist(action)
if not is_undefined(action[? "active"])
if ds_map_find_value(action[? "active"], "state") = _ABILITY_STATE.blast {
	var _rad = ds_map_find_value(action[? "active"], "state_time")
	with instance_create_layer(x, y, "Particles", ob_damage_area) {
		ds_map_copy(action, other.action)
		damage = ds_map_find_value(action[? "active"], "state_value")
		accuracy_done_for = noone
		radius = max((action[? "radius"] + _rad ) * 8, 1)
		pokemon_id = other.pokemon_id
		hurt_time = other.hurt_time
		damage_mod = other.damage_mod
		direction = other.direction
		timeout = 2
		sprite_index = noone
	}	
}
with instance_create_layer(x, y, "Particles", ob_damage_area) {
	ds_map_copy(action, other.action)
	accuracy_done_for = other.accuracy_done_for
	radius = max(action[? "radius"] * 8, 1)
	pokemon_id = other.pokemon_id
	hurt_time = other.hurt_time
	damage_mod = other.damage_mod
	accuracy_mod = other.accuracy_mod
	direction = other.direction
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


