/// @desc Update

event_inherited()

var _list = current_trainer[? "active_pokemon_list"]

image_index = is_undefined(_list[| index]) ? 0 : 1
