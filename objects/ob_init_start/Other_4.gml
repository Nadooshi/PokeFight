/// @desc

var slot_elements_count;
slot_elements_count = 0

var _elem = ds_map_create()

trainer_slot = []

_elem[? "x"] = 0
_elem[? "y"] = 0
_elem[? "xs"] = fr_trainer_slot.image_xscale
_elem[? "ys"] = fr_trainer_slot.image_yscale
_elem[? "ob"] = fr_trainer_slot.object_index
_elem[? "param"] = ""

trainer_slot[slot_elements_count] = ds_map_create()
ds_map_copy(trainer_slot[slot_elements_count], _elem)
slot_elements_count++

with ob_ui_object
if place_meeting(x, y, fr_trainer_slot) {
	_elem[? "x"] = x - fr_trainer_slot.x
	_elem[? "y"] = y - fr_trainer_slot.y
	_elem[? "xs"] = image_xscale
	_elem[? "ys"] = image_yscale
	_elem[? "ob"] = object_index
	_elem[? "param"] = parameter_name
	
	trainer_slot[slot_elements_count] = ds_map_create()
	ds_map_copy(trainer_slot[slot_elements_count], _elem)
	slot_elements_count++
}
