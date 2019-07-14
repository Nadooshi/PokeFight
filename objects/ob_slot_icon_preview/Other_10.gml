/// @desc

if parameter_name != ""
if not is_undefined(map) and ds_exists(map, ds_type_map) {
	var _list = map[? parameter_name]
	if index < ds_list_size(_list) {
		var _pokemon = _list[| index]
		image_index = _pokemon[? "face"]
		visible = true
	} else
		visible = false
}
