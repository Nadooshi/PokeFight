/// @desc

// Inherit the parent event
event_inherited();

if ds_list_find_index(current_trainer[? "active_pokemon_list"], index) = -1 {
	ds_list_add(current_trainer[? "active_pokemon_list"], index)
	event_perform(ev_other, ev_user0)
	with ob_slot_pokebol
		event_perform(ev_other, ev_user0) // update
}
