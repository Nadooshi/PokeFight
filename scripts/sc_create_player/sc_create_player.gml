/// @arg map

var _map = argument0
var _result = noone
var _sp = noone

with instance_create_layer(0, 0, "Game", ob_player) {
	// create pokemon
	_result = id
	pokemon_map = _map
	shadowFrame = pokemon_map[? "size"]
	dAngle = 5 - pokemon_map[? "size"]
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
			if not is_undefined(_map_abil) and ds_exists(_map_abil, ds_type_map)
				a_map[? "active"] = _map_abil
		}
		ds_list_add(action_list, a_map)
	}
	ini_close()
}

return _result
