/// @arg id
/// @arg source

ds_map_copy(argument0, argument1);
if not sc_does_exist(argument1[? "active"])
	argument1[? "active"] = ds_map_create()
ds_map_copy(argument0[? "active"], argument1[? "active"]);
