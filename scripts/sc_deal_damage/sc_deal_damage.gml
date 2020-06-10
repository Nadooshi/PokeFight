/// @arg action
/// @arg attacking_pokemon

/// for damaged pokemon

var _action = argument0
var _pokemon_id_attack = argument1
var _dmg = sc_calculate_damage(_action, pokemon_map)

if _action[? "bullet_phys"] = _BULLET_PH.chain
with other
	chain_dmg_target = sc_chain_damage()

sc_hurt(_dmg);

// apply state
if sc_does_exist(_action[? "active"]) {
	var _state = ds_map_find_value(_action[? "active"], "state");
	var _state_obj = state_object[_state];
	var _s_rate = ds_map_find_value(_action[? "active"], "state_rate");
	var _rate = 25*(_s_rate + 1)
	var _r_ = random_range(0, 100)
	if object_exists(_state_obj)
	if ds_exists(states, ds_type_list)
	// check apply state rate
	if _r_ <= _rate {
	//if ds_list_find_index(states, _state_obj) < 0 {
		ds_list_add(states, _state_obj)
		with instance_create_layer(x, y, "Particles", _state_obj) {
			pokemon_id = other.id;
			pokemon_id_attack = _pokemon_id_attack;
			ds_map_copy(action, _action);
		}
	}
	
}
