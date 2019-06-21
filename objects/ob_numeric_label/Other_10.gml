/// @desc Update
caption = ""
if parameter_name != "" {
	if is_undefined(current_pokemon[? parameter_name])
		value = 0
	else
		value = real(current_pokemon[? parameter_name])

	caption = string(value)
}

