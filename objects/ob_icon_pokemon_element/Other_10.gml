/// @desc

event_inherited()
image_index = 30

if not is_undefined(map)
if ds_exists(map, ds_type_map)
	image_index = map[? parameter_name]
