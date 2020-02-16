/// @arg component_obj
/// @arg [perform_create=false]

var _cmp = argument[0]
var _event = false
if argument_count > 1
	_event = argument[1]

if not object_exists(_cmp)
	exit

if variable_instance_exists(id, "component_list") {
	if not ds_exists(component_list, ds_type_list)
		component_list = ds_list_create()
} else {
	component_list = ds_list_create()
	component_count = 0
}

if ds_list_find_index(component_list, _cmp) = -1 {
	ds_list_add(component_list, _cmp)
	component_count = ds_list_size(component_list)
	if _event
		event_perform_object(_cmp, ev_create, 0)
}


