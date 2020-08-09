/// @desc

// Inherit the parent event
event_inherited();



current_pokemon = ds_list_find_value(map[? parameter_name], index)
if not sc_does_exist(current_pokemon)
	exit;

with frame_pokemon {
	map = current_pokemon
	visible = true
	event_perform(ev_other, ev_user0)
}

sc_refresh_actions()
	
room_height = max(1080, 16 + 96 * ds_map_size(current_pokemon[? "actions"]))
sc_switch_view_actions()

