///@arg parent_frame

var parent_frame = argument0
if not instance_exists(parent_frame)
	exit
	
with ob_ui_object 
if place_meeting(x, y, parent_frame) {
	parent = parent_frame
	parent.ui_objects[parent.ui_objects_count] = id
	parent.ui_objects_count++
}

with ob_frame
if place_meeting(x, y, parent_frame) {
	parent = parent_frame
	parent.ui_objects[parent.ui_objects_count] = id
	parent.ui_objects_count++
}
