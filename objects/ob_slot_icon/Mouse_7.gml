/// @desc

// Inherit the parent event
event_inherited();



current_pokemon = ds_list_find_value(map[? parameter_name], index)

with ob_frame_action
	instance_destroy()

if not is_undefined(current_pokemon) and ds_exists(current_pokemon, ds_type_map)
with frame_pokemon {
	map = current_pokemon
	visible = true
	event_perform(ev_other, ev_user0)

	// update actions
	var _name = ds_map_find_first(current_pokemon[? "actions"])
	var _count = 0

	ini_open(pokemon_path)
	while not is_undefined(_name) {
		with sc_add_slot_composed(3200 + 8, 8+80*_count, _name, action_slot) {
			map = ds_map_create()
			ds_map_read(map, ini_read_string("actions", _name, ""))
		}
		_name = ds_map_find_next(current_pokemon[? "actions"], _name)
		_count++
	}
	ini_close()

	with ob_frame_action
		event_perform(ev_other, ev_user0)

	room_height = max(1080, 16 + 80 * _count)
	sc_switch_view_actions()
}
