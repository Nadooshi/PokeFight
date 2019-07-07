
var fname  = "trainer_saves/" + string_letters(current_trainer[? "name"])+".ini"

ini_open(fname)
	ini_write_string("trainer", "map" , ds_map_write(current_trainer))
	
	if ds_exists(current_trainer[? "caught_pokemon_list"], ds_type_list) {
		var _list = current_trainer[? "caught_pokemon_list"]
		for (var i=0; i<ds_list_size(_list); i++) 
		if ds_exists(_list[| i], ds_type_map) {
			//ini_write_string("caught_pokemons", string(i), ds_map_write(...) )
			// ( sc_save_pokemon )
		}
	}
	ini_write_string("active_pokemons", current_trainer[? "name"], ds_list_write(current_trainer[? "active_pokemon_list"])) 
	
ini_close()


