/// @desc

if editing {
	if string_digits(keyboard_string) = ""
		caption = ""
	else 
		caption = real(string_digits(keyboard_string))
	keyboard_string = string(caption)
}
