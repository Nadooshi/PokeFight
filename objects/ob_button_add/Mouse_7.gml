/// @desc

// Inherit the parent event
event_inherited();

if ds_list_find_index(current_trainer[? "active_pokemon_list"], map) = -1 {
	ds_list_add(current_trainer[? "active_pokemon_list"], map)
	sc_refresh_ui()
}
