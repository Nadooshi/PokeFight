/// @arg component_object
/// @arg [perform_destroy=false]

var _cmp = argument[0]
var _event = false
if argument_count > 1 
	_event = argument[1]

if not object_exists(_cmp)
	exit

ds_list_delete(component_list, ds_list_find_index(component_list, _cmp))
component_count = ds_list_size(component_list)

if _event
	event_perform_object(_cmp, ev_destroy, 0)
