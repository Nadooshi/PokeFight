/// @arg x
/// @arg y
/// @arg map
/// @arg index

var _x = argument0
var _y = argument1
var _mapID = argument2
var _index = argument3

with instance_create_layer(_x, _y, "Frames", ob_slot_fireball) {
	image_xscale = 2
	image_yscale = 2
	image_alpha = 0.5
}

with instance_create_layer(_x, _y, "Interactives", ob_slot_icon) {
	image_xscale = 4
	image_yscale = 4
	map = _mapID
	hint = map[? "title"]
}

with instance_create_layer(_x+48, _y-48, "Interactives", ob_button_add) {
	map = _mapID
	index = _index
}

