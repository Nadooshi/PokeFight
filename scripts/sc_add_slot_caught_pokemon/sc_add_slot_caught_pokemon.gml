/// @arg x
/// @arg y
/// @arg name
var _x = argument0
var _y = argument1
var _name = argument2

with instance_create_layer(_x, _y, "Frames", ob_slot_fireball) {
	image_xscale = 2
	image_yscale = 2
	image_alpha = 0.5
}

with instance_create_layer(_x, _y, "Interactives", ob_slot_icon) {
	image_xscale = 4
	image_yscale = 4
	name = _name
	hint = _name
}


