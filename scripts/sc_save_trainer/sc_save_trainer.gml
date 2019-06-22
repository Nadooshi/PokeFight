
ini_open(trainer_path)
	ini_write_string("trainers", current_trainer[? "name"] , ds_map_write(current_trainer))
	ini_write_string("caught_pokemons", current_trainer[? "name"], ds_list_write(current_trainer[? "caught_pokemon_list"])) 
	ini_write_string("active_pokemons", current_trainer[? "name"], ds_list_write(current_trainer[? "active_pokemon_list"])) 
	
	ini_write_string("trainer_list", "count", string(trainer_count))
	for (var i=0; i<trainer_count; i++)
		ini_write_string("trainer_list", string(i), trainer_arr[i])

ini_close()


