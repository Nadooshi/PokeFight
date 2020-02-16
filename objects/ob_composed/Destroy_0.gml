/// @desc

for (var i=0; i<component_count; i++)
if object_exists(component_list[| i])
	event_perform_object(component_list[| i], ev_destroy, 0)

//ds_list_destroy(component_list)
