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
//	if ds_list_find_index(_list, state_object[_ABILITY_STATE.mirror]) { // создаёт атаку направленную в обратную сторону
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
	if ds_exists(states, ds_type_list)
	// check apply state rate
	if _r_ <= _rate {
	//if ds_list_find_index(states, _state_obj) < 0 {
        var _state_inst = instance_create_layer(x, y, "Particles", _state_obj)
		with _state_inst {
			damage = _dmg
			index = ds_list_size(other.states)
			pokemon_id = other.id;
			pokemon_id_attack = _pokemon_id_attack; // атакующий
			ds_map_copy(action, _action);
		}
		ds_list_add(states, _state_inst)
	}
}
