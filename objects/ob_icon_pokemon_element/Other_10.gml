/// @desc

value = ds_map_find_value(current_pokemon, parameter_name)
if is_undefined(value) value=0

image_index = value
hint = elemental_text[value]
ob_picture_background.image_index = image_index
