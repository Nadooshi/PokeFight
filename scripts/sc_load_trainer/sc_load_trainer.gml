///@arg fname file_name
///@arg map

var _fname = argument0
var _ds = argument1
if ds_exists(_ds, ds_type_map) 
if file_exists("trainer_saves/" + _fname) {
	ini_open("trainer_saves/" + _fname)
		ds_map_read(_ds, ini_read_string("trainer", "map", _ds))
		// sc_new_trainer must be here!
		_ds[? "active_pokemon_list"] = ds_list_create(); ds_list_clear(_ds[? "active_pokemon_list"])
		_ds[? "caught_pokemon_list"] = ds_list_create(); ds_list_clear(_ds[? "caught_pokemon_list"])
		_ds[? "inventory"]	= array_create(trainer_inv_size, noone)
		_ds[? "awards"]		= ds_list_create(); ds_list_clear(_ds[? "awards"])
				
		var i=0
		while ini_key_exists("caught pokemons", string(i)) {
			var _pokemon = ds_map_create()
			ds_map_read(_pokemon, ini_read_string("caught pokemons", string(i), ""))
			_pokemon[? "actions"]		 = ds_map_create(); 
			ds_map_read(_pokemon[? "actions"], ini_read_string("actions", string(i), ""))
			_pokemon[? "active_actions"] = ds_list_create(); ds_list_clear(_pokemon[? "active_actions"])
			ds_list_read(_pokemon[? "active_actions"], ini_read_string("active actions", string(i), ""))
			ds_list_add(_ds[? "caught_pokemon_list"], _pokemon)
			i++
		}
		
		// active_pokemon_list contains pokemon maps (for simplicity)
		// indexes from caught_pokemon_list are saved to file
		// (indexes to pokemon maps)
		var _idlist = ds_list_create(); ds_list_clear(_idlist)
		ds_list_read(_idlist, ini_read_string("trainer", "active pokemons", ""))
		for (i=0; i<ds_list_size(_idlist); i++) {
			var _pokemon = ds_list_find_value(_ds[? "caught_pokemon_list"], _idlist[| i])
			ds_list_add(_ds[? "active_pokemon_list"], _pokemon)
		}
		ds_list_destroy(_idlist)
	ini_close()
}

