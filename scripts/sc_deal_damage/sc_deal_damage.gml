/// @arg action
/// @arg attacking_pokemon

/// for damaged pokemon

var _action = argument0
var _pokemon_id_attack = argument1
var _dmg = sc_calculate_action_damage(_action, pokemon_map, _pokemon_id_attack)

if _action[? "bullet_phys"] = _BULLET_PH.chain
with other
	chain_dmg_target = sc_chain_damage()

// apply state
if ds_exists(states, ds_type_list)
if not ds_list_empty(states) {
	var _list = ds_list_create();
	for (var i=0; i<ds_list_size(states); i++)
		_list[| i]=states[| i].object_index
	if ds_list_find_index(_list, state_object[_ABILITY_STATE.block])>=0 {
		_dmg = 0
		with instance_create_layer(x, y, "Particles", ob_particle_text)
			caption = "Immune!"
	}
	if ds_list_find_index(_list, state_object[_ABILITY_STATE.reflect])>=0 { // создаёт атаку направленную в обратную сторону
		_dmg = 0
		with instance_create_layer(x, y, "Particles", ob_particle_text)
			caption = "Reflect!"
		switch _action[? "type"]{
			case _ATTACK_TYPE.range:{
				with instance_create_layer(x, y+9, "Particles", ob_bullet_range){
					ds_map_copy(action, _action)
					pokemon_id = other.id
					hurt_time = _action[? "hurt_time"]
					timeout = 30 * 0.1 * _action[? "range"]
					damage_mod = other.damage_mod
					accuracy_mod = other.accuracy_mod
					direction = 180 - _action[? "dir"]
					image_angle = direction
					sprite_index = asset_get_index(_action[? "p_anim"])
					image_blend = sc_make_attack_colour(_action)
				}
				break;
			}
			case _ATTACK_TYPE.ray:{
				with instance_create_layer(x, y+9, "Particles", ob_bullet_ray) {
						ds_map_copy(action, _action)
						pokemon_id = other.id
						hurt_time = _action[? "hurt_time"]
						timeout = 30
						damage_mod = other.damage_mod
						accuracy_mod = other.accuracy_mod
						direction = 180 - _action[? "dir"]
						image_angle = direction
						sprite_index = asset_get_index(_action[? "p_anim"])
						image_blend = sc_make_attack_colour(_action)
				}
				break;
			}
			case _ATTACK_TYPE.wave:{
				with instance_create_layer(x, y+9, "Particles", ob_bullet_wave) {
					ds_map_copy(action, _action)
					pokemon_id = other.id
					hurt_time = _action[? "hurt_time"]
					timeout = 30 * 0.1 * _action[? "range"]
					damage_mod = other.damage_mod
					accuracy_mod = other.accuracy_mod
					direction = 180 - _action[? "dir"]
					image_angle = direction
					sprite_index = asset_get_index(_action[? "p_anim"])
					image_blend = sc_make_attack_colour(_action)
					if _action[? "range"] = 0
						d_size = 0
					else
						d_size = ((_action[? "radius"]) / timeout)					
				}
				break;
			}
		}
	}
	if ds_list_find_index(_list, state_object[_ABILITY_STATE.disgust])>=0 {
		switch _action[? "type"] {			
			case _ATTACK_TYPE.front:
			case _ATTACK_TYPE.lunge:
			case _ATTACK_TYPE.melee:
			case _ATTACK_TYPE.swoop:
			var stun_action = ds_map_create()
			var stun_active = ds_map_create()
			stun_active[? "name"] = "stun"
			stun_active[? "state_time"] = ds_map_find_value(_action[? "active"], "state_time")
			stun_action[? "active"] = stun_active
			with _pokemon_id_attack
				sc_apply_state(ob_state_stun, 0, _pokemon_id_attack, stun_action);
			ds_map_destroy(stun_action)
		}	
	}

	if ds_list_find_index(_list, state_object[_ABILITY_STATE.barrier])>=0 {
		_dmg = sc_shield_damage(_dmg)
	}
	
	ds_list_destroy(_list);
}
sc_hurt(_dmg);

if sc_does_exist(_action[? "active"]) {
	var _state = ds_map_find_value(_action[? "active"], "state");
	var _state_obj = state_object[_state];
	var _s_rate = ds_map_find_value(_action[? "active"], "state_rate");
	var _rate = 25*(_s_rate + 1)
	var _r_ = random_range(0, 100)
	if object_exists(_state_obj)
		// check apply state rate
	if _r_ <= _rate
		sc_apply_state(_state_obj, _dmg, _pokemon_id_attack, _action);
}
