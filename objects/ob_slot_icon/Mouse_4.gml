/// @desc

// Inherit the parent event
event_inherited();

sc_clear_pokemon(current_pokemon)
sc_load_pokemon(name, current_pokemon)

if not is_undefined(current_pokemon)
if ds_exists(current_pokemon, ds_type_map)
with frame_pokemon {
	map = current_pokemon
	visible = true
	event_perform(ev_other, ev_user0)
}

