/// @desc

// Inherit the parent event
event_inherited();



current_pokemon = ds_list_find_value(map[? parameter_name], index)

if not is_undefined(current_pokemon) and ds_exists(current_pokemon, ds_type_map)
with frame_pokemon {
	map = current_pokemon
	visible = true
	event_perform(ev_other, ev_user0)
}


