/// @arg x
/// @arg y
/// @arg map
/// @arg index

var _x = argument0
var _y = argument1
var _mapID = argument2
var _index = argument3

with instance_create_layer(_x, _y, "Interactives", ob_slot_icon) {
	image_xscale = 4
	image_yscale = 4
	map = current_trainer
	parameter_name = "caught_pokemon_list"
	index = _index
}

with instance_create_layer(_x+48, _y-48, "Interactives", ob_button_add) {
	map = _mapID
	index = _index
}

