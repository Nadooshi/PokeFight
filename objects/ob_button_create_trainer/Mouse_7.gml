/// @desc

// Inherit the parent event
event_inherited();

if is_undefined(trainer_preset[? "name"]) or trainer_preset[? "name"] = ""
	trainer_preset[? "name"] = "Newbie"

ds_map_copy(current_trainer, trainer_preset)


#region // add random pokemons
var _count = irandom(12)+3  // 3..15
repeat (_count) {
	var n		 = irandom(pokemon_list_count-1)
	var _name	 = ds_map_find_first(pokemon_list)
	for (var i=1; i<=n; i++)
		_name = ds_map_find_next(pokemon_list, _name)

	ds_list_add(current_trainer[? "caught_pokemon_list"], sc_load_new_pokemon(_name))
}
#endregion

sc_save_trainer()


sc_clear_trainer(player1_trainer); player1_trainer = noone
sc_clear_trainer(player2_trainer); player2_trainer = noone

room_restart()
