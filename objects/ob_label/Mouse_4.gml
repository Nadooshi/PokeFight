/// @desc

if popup_appeared exit

event_inherited()


var ok = false
with ob_label
if editing {
	ok = true
	break
}		

if not ok {
	image_blend = c_gray
	editing = true
	keyboard_string = string(caption)
}

clicked = false
