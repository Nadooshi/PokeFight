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
with ob_frame_action
	instance_destroy()

var _name = ds_map_find_first(current_pokemon[? "actions"])
var _i = 0

ini_open(pokemon_path)
while not is_undefined(_name) {
	with sc_add_slot_composed(frame_pokemon.x + 8, frame_pokemon.y+256+80*_i, _name, action_slot, ob_frame_action) {
		map = ds_map_create()
		ds_map_read(map, ini_read_string("actions", _name, ""))

	}
	_name = ds_map_find_next(current_pokemon[? "actions"], _name)
	_i++
}
ini_close()

with ob_frame_action
	event_perform(ev_other, ev_user0)
