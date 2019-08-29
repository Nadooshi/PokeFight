/// @desc 

if ds_list_size(current_pokemon[? "active_actions"]) < 6
if ds_list_find_index(current_pokemon[? "active_actions"], map[? "name"]) = -1 {
	ds_list_add(current_pokemon[? "active_actions"], map[? "name"])
	sc_refresh_actions()
}

