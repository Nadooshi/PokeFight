/// @desc

// Inherit the parent event
event_inherited();

var _list = current_trainer[? "active_pokemon_list"]
if not is_undefined(_list[| index]) {
	ds_list_delete(_list, index)
	sc_refresh_ui()
}
