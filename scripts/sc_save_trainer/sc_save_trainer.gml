
var fname  = "trainer_saves/" + string_letters(current_trainer[? "name"])+".ini"

ini_open(fname)
	ini_write_string("trainer", "map" ,				ds_map_write (current_trainer))
	// active_pokemon_list contains pokemon maps (for simplicity)
	// indexes from caught_pokemon_list are saved to file
	// pokemon maps to indexes
	var _idlist = ds_list_create(); ds_list_clear(_idlist)
	for (var i=0; i<ds_list_size(current_trainer[? "active_pokemon_list"]); i++) {
		var _id = ds_list_find_index(current_trainer[? "caught_pokemon_list"], ds_list_find_value(current_trainer[? "active_pokemon_list"], i))
		ds_list_add(_idlist, _id)
	}
	ini_write_string("trainer", "active pokemons",	ds_list_write(_idlist)) 
	ds_list_destroy(_idlist)
	
	if ds_exists(current_trainer[? "caught_pokemon_list"], ds_type_list) {
		var _list = current_trainer[? "caught_pokemon_list"]
		for (var i=0; i<ds_list_size(_list); i++) 
		if ds_exists(_list[| i], ds_type_map) {
			var _pokemon = _list[| i]
			ini_write_string("caught pokemons", string(i), ds_map_write (_pokemon))
			ini_write_string("actions",			string(i), ds_map_write (_pokemon[? "actions"]) )
			ini_write_string("active actions",	string(i), ds_list_write(_pokemon[? "active_actions"]) )
		}
	}
	
ini_close()


