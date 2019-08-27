if is_undefined(current_pokemon) or not ds_exists(current_pokemon, ds_type_map)
	return false;

	
with ob_frame_action
	instance_destroy()

// create scrollable list of all actions
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
	
// create list of active actions
for (var i=0; i<ds_list_size(current_pokemon[? "active_actions"]); i++) {
	_name = ds_list_find_value(current_pokemon[? "active_actions"], i)
	with sc_add_slot_composed(16, 576+80*i, _name, action_slot, ob_frame_action_acive) {
		map = ds_map_create()
		ds_map_read(map, ini_read_string("actions", _name, ""))
		if is_undefined(map) break
	}
}
	
ini_close()

with ob_frame_action
	event_perform(ev_other, ev_user0)

