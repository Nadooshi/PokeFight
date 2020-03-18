/// @arg map
/// @arg trainer

var _map = argument0
var _trainer = argument1
var _result = noone
var _sp = noone

with instance_create_layer(0, 0, "Game", ob_player) {
	// create pokemon
	_result = id
	trainer = _trainer
	pokemon_map = _map
	size = pokemon_map[? "size"]
	dAngle = 5 - pokemon_map[? "size"]
	health_max = pokemon_map[? "health"]
	health_cur = health_max
	maxSpeed =  pokemon_map[? "ap"] * 0.25
	_sp = asset_get_index("sp_pokeworld_" + string(pokemon_map[? "face"]))
	if sprite_exists(_sp)
		sprite_index = _sp
	if pokemon_map[? "size"] = _SIZE.giant { 
		image_xscale = 1.5
		image_yscale = 1.5
	}
	
	// create action list
	ds_list_clear(action_list)
	var a_list = pokemon_map[? "active_actions"]
	var a_map = noone
	ini_open(pokemon_path)
	for (var i=0; i<ds_list_size(a_list); i++) {
		a_map = ds_map_create()
		ds_map_read(a_map, ini_read_string("actions", a_list[| i], ""))
		// load ability for action
		if not is_undefined(a_map[? "active"]) {
			var _map_abil = ds_map_create()
			ds_map_read(_map_abil, ini_read_string("abilities", a_map[? "active"], ""))
			if sc_does_exist(_map_abil)
				a_map[? "active"] = _map_abil
		}
		ds_list_add(action_list, a_map)
	}
	ini_close()
	
	// set start position 
	switch pokemon_map[? "position_stage"] {
	case _POSITION.fly:
		event_perform(ev_other, ev_user4)
		break
	case _POSITION.underground:
		event_perform(ev_other, ev_user2)
		break
	}
	
}

return _result
