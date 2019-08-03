/// @desc

// Inherit the parent event
event_inherited();

ds_map_copy(current_trainer, trainer_preset)


#region // add random pokemons
var _count = irandom(5)+1  // 1..3
repeat (_count) {
	var n		 = irandom(pokemon_list_count-1)
	var _name	 = ds_map_find_first(pokemon_list)
	for (var i=1; i<=n; i++)
		_name = ds_map_find_next(pokemon_list, _name)

	ds_list_add(current_trainer[? "caught_pokemon_list"], sc_load_new_pokemon(_name))
}
#endregion


trainer_fnames[trainer_count] = string_letters(current_trainer[? "name"])+".ini"
trainer_count++

sc_save_trainer()

room_goto(room_next(room))
