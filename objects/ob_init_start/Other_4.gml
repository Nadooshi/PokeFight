/// @desc

#region sc_create_slot_composed

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

#endregion


////////////////////////////////////////
var slot_w;
var slot_h;

with instance_create_layer(0, 0, "Frames", ds_map_find_value(trainer_slot[0], "ob")) {
	image_xscale = ds_map_find_value(trainer_slot[0], "xs")
	image_yscale = ds_map_find_value(trainer_slot[0], "ys")
	slot_w = bbox_right - bbox_left
	slot_h = bbox_bottom - bbox_top
	instance_destroy()
}

// create slots

if trainer_count = 0
	exit

var _w = camera_get_view_width(view_camera[1])
var _xoffset = camera_get_view_x(view_camera[1])
var rowlength = floor(( _w - 64) / slot_w)
var rowcount = floor(trainer_count / rowlength) + 1

var _count = 0
var i = 0
var k = 0
for (i=0; i<rowcount; i++)
for (k=0; k<rowlength; k++) {
	if _count = trainer_count
		break
	with sc_add_slot_composed(k*slot_w+32 + _xoffset, i*slot_h+32, trainer_arr[_count], trainer_slot, ob_frame_trainer)
		index = _count
	_count++
}

previous_room = room_next(room) // set next room to move to after selection
edit_mode = false

room_height = max(1080, slot_h * rowcount + 128)

sc_refresh_ui()

