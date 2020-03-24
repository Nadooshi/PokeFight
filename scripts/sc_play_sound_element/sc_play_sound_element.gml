///@arg type-element_or_material-string
var type = argument0
var _name = ""
var _snd = noone

if ds_map_exists(action, type) {
	_name = "snd_element_"+string(elemental_text[action[? type]])
	_snd = asset_get_index(_name)
	sc_play_sound(_snd, false)
} else
	show_message("Error in array! Not found '"+ string(type) + "' in action")
