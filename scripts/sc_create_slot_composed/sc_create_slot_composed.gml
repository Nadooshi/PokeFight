///@arg base_frame Slot frame

var base_frame = argument0
if not instance_exists(base_frame)
	return []

var result_slot = []
var slot_elements_count;
var _elem = ds_map_create()

slot_elements_count = 1

_elem[? "x"] = 0
_elem[? "y"] = 0
_elem[? "xs"] = base_frame.image_xscale
_elem[? "ys"] = base_frame.image_yscale
_elem[? "ob"] = base_frame.object_index
_elem[? "param"] = ""

result_slot[0] = ds_map_create()
ds_map_copy(result_slot[0], _elem)

with ob_ui_object
if place_meeting(x, y, base_frame) {
	_elem[? "x"] = x - base_frame.x
	_elem[? "y"] = y - base_frame.y
	_elem[? "xs"] = image_xscale
	_elem[? "ys"] = image_yscale
	_elem[? "ob"] = object_index
	_elem[? "param"] = parameter_name
	if variable_instance_exists(id, "index")
		_elem[? "index"] = index
	
	result_slot[slot_elements_count] = ds_map_create()
	ds_map_copy(result_slot[slot_elements_count], _elem)
	slot_elements_count++
}

ds_map_destroy(_elem)

return result_slot

