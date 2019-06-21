/// @desc

if popup_appeared exit

var sq = ceil(sqrt(image_number))
var rows = ceil(image_number/sq)

var popup_frame = sc_create_popup_frame(id, x + 144, y - 16, 128*sq+32, 128*rows+32)

var _count = 0
for (var i=0; i<sq; i++) 
for (var k=0; k<sq; k++) {
	if _count>(image_number-1)
		break
	var obj = instance_create_layer(popup_frame.x + k*128+16, popup_frame.y + i*128+16, "Popups", ob_state_variant_ability)
	obj.image_index = _count
	obj.image_xscale = 1
	obj.image_yscale = 1
	obj.value = _count
	obj.depth = -1
	obj.parent = popup_frame
	//obj.hint = ??
	popup_frame.ui_objects[popup_frame.ui_objects_count] = obj
	popup_frame.ui_objects_count++
	_count++
}

popup_appeared = true
