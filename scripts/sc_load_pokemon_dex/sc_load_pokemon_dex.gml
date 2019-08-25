/// @arg name
/// @arg ds_map_id

// cannot create ds_map here. Its Id won't be saved outside this script

var _name = argument0
var _ds = argument1
if ds_exists(_ds, ds_type_map) {
	ini_open(pokemon_path)
		ds_map_read(_ds, ini_read_string("pokemons", _name , ""))
		_ds[? "title"] = sc_remove_hashtag(_ds[? "title"])
		_ds[? "actions"] = ds_map_create()
		ds_map_read(_ds[? "actions"], ini_read_string("binded_actions", _name , ""))
	ini_close()
}

