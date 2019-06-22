/// @desc

if parameter_name != ""
if ds_exists(edited_map, ds_type_map) {
	value_str = edited_map[? parameter_name]
	
	caption = value_str
}
