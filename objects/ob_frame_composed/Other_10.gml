/// @desc

// map should be created in child object
for (var i=0; i<ui_objects_count; i++)
with ui_objects[i] {
	map = other.map
	enabled = other.enabled
	visible = other.visible
	if visible
		event_perform(ev_other, ev_user0)
}
