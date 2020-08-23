/// @desc

for (var i=0; i<component_count; i++)
if object_exists(component_list[| i])
	event_perform_object(component_list[| i], ev_destroy, 0)

instance_deactivate_object(id)
//ds_list_destroy(component_list)
//show_debug_message(object_get_name(object_index)+ " (" + string(id)+") has been destroyed");

