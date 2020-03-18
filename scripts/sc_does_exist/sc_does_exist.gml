///@arg instance_or_map

var _value = argument0

if not is_undefined(_value) {
	if not ds_exists(_value, ds_type_map) {
		if not instance_exists(_value)
			return false
	}
} else
	return false

return true


