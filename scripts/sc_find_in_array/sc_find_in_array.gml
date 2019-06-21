/// 
var _arr = argument0
var _val = argument1

if not is_array(_arr) 
	return -1
	
var _l = array_length_1d(_arr)

for (var i=0; i<_l; i++)
	if _val == _arr[i]
		return i

return -1
