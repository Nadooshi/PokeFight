/// @desc

event_inherited()

if parameter_name != ""
if ds_exists(map, ds_type_map) {
	value_str = map[? parameter_name]
	
	caption = value_str
}
