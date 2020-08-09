
with ob_frame_action
	instance_destroy()
with ob_scroll_control {
	event_perform(ev_other, ev_room_end)
	view_index = 1
	view_x = 1920
	event_perform(ev_other, ev_room_start)
}

