///@arg fname file_name
///@arg map

var _fname = argument0
var _ds = argument1
if ds_exists(_ds, ds_type_map) 
if file_exists("trainer_saves/" + _fname) {
	ini_open("trainer_saves/" + _fname)
		ds_map_read(_ds, ini_read_string("trainer", "map", _ds))
		// sc_new_trainer must be here!
		_ds[? "active_pokemon_list"] = ds_list_create()
		_ds[? "caught_pokemon_list"] = ds_list_create()
		_ds[? "inventory"]	= array_create(trainer_inv_size, noone)
		_ds[? "awards"]		= ds_list_create()
		ds_list_read(_ds[? "active_pokemon_list"], ini_read_string("trainer", "active pokemons", ""))
		var i=0
		while ini_key_exists("caught pokemons", string(i)) {
			var _pokemon = ds_map_create()
			ds_map_read(_pokemon, ini_read_string("caught pokemons", string(i), ""))
			_pokemon[? "active_actions"] = ds_list_create()
			ds_list_read(_pokemon[? "active_actions"], ini_read_string("active actions", string(i), ""))
		
			
			ds_list_add(_ds[? "caught_pokemon_list"], _pokemon)
			i++
		}
	ini_close()
}

