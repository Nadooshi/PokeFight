/// @desc Set map field value by reference
/// @arg ref
/// @arg value

var _ref = argument0
var _val = argument1

if is_array(_ref)
	ds_map_set(_ref[0], _ref[1], _val)
