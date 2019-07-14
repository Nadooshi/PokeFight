/// @desc

#region Compose list of caught pokemons

var _caught_count = ds_list_size(current_trainer[? "caught_pokemon_list"])

var _maxcount = ceil((room_width - 64 - 96) / 96)
var _rowscount = floor(_caught_count / _maxcount) + 1
var _sz = 128

var _count = 0
var _pokemon = ds_list_find_value(current_trainer[? "caught_pokemon_list"], _count)
var i = 0
var k = 0
for (i=0; i<_rowscount; i++)
for (k=0; k<_maxcount; k++) {
	if is_undefined(_pokemon) 
		break
	if _count >= _caught_count
		break
	sc_add_slot_caught_pokemon(k*_sz+32+48+1920, i*_sz+32+48, _pokemon, _count)
	_count++
	_pokemon = ds_list_find_value(current_trainer[? "caught_pokemon_list"], _count)
}

// set pictures for icons
/*
with ob_slot_icon {
	// should be like this
	event_perform(ev_other, ev_user0) // update
	if not is_undefined(map) and ds_exists(map, ds_type_map)
	if not (is_undefined(map[? "face"]) or (map[? "face"] == ""))
		image_index = map[? "face"]
}
*/

room_height = max(1080, _sz * _rowscount + 96+112)

#endregion


#region Save composed slot for action

action_slot = sc_create_slot_composed(frame_action)
sc_group_ui_objects(frame_pokemon)

#endregion

sc_refresh_ui()
