/// @desc
if editing
if not point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) 
	event_perform(ev_keyboard, vk_return)
