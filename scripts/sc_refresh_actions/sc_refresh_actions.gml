if is_undefined(current_pokemon) or not ds_exists(current_pokemon, ds_type_map)
	return false;

	
with ob_frame_action
	instance_destroy()

// create scrollable list of all actions
var _name = ds_map_find_first(current_pokemon[? "actions"])
var _count = 0
ini_open(pokemon_path)
while not is_undefined(_name) {
	with sc_add_slot_composed(3200 + 64, 8+92*_count, _name, action_slot) {
		map = ds_map_create()
		ds_map_read(map, ini_read_string("actions", _name, ""))
		// load ability for action
		if not is_undefined(map[? "active"]) {
			var _map_abil = ds_map_create()
			ds_map_read(_map_abil, ini_read_string("abilities", map[? "active"], ""))
			if not is_undefined(_map_abil) and ds_exists(_map_abil, ds_type_map)
				map[? "active"] = _map_abil
		}
		// set ui properties
		enabled = (ds_list_find_index(current_pokemon[? "active_actions"], _name) = -1)
		index = _count
	}
	_name = ds_map_find_next(current_pokemon[? "actions"], _name)
	_count++
}
	
// create list of active actions
for (var i=0; i<ds_list_size(current_pokemon[? "active_actions"]); i++) {
	_name = ds_list_find_value(current_pokemon[? "active_actions"], i)
	with sc_add_slot_composed(80, 525+92*i, _name, action_slot, ob_frame_action_active) {
		map = ds_map_create()
		ds_map_read(map, ini_read_string("actions", _name, ""))
		if not is_undefined(map[? "active"]) {
			var _map_abil = ds_map_create()
			ds_map_read(_map_abil, ini_read_string("abilities", map[? "active"], ""))
			if not is_undefined(_map_abil) and ds_exists(_map_abil, ds_type_map)
				map[? "active"] = _map_abil
		}
		index = i
	}
}
	
ini_close()

with ob_frame_action
	event_perform(ev_other, ev_user0)

