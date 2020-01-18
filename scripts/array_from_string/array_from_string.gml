/// @arg string
/// @arg [sep]

var _str = argument[0]
var _sep = ", "
if argument_count > 1 
	_sep = argument[1]

var _result = []
var _index = 0
var _p = string_pos(_sep, _str)

while _p > 0 {
	_result[_index] = real(string_copy(_str, 1, _p))
	_str = string_copy(_str, _p + string_length(_sep), string_length(_str))
	_p = string_pos(_sep, _str)
	_index++
}

_result[_index] = real(_str)
return _result
