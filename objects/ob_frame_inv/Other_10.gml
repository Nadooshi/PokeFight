/// @desc 

for (var i=0; i<ui_objects_count; i++)
with ui_objects[i] {
	visible = other.visible
	if visible {
		map = other.map
		event_perform(ev_other, ev_user0)
		hint = ""
	}
}

