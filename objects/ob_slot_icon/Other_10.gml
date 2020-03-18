/// @desc Update

event_inherited()

if parameter_name != ""
if sc_does_exist(map) {
	var _pokemon = ds_list_find_value(map[? parameter_name], index)
	if not is_undefined(_pokemon) {
		image_index = _pokemon[? "face"]
		hint = _pokemon[? "title"]
		visible = true
	} else
		visible = false

}
