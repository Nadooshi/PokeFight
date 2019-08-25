/// @arg string

var _s = argument0
var _n = (string_pos("#", _s) == 0) ? string_length(_s) : string_pos("#", _s)-1
return string_copy(_s, 1, _n)

