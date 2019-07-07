/// @arg pokemon_ds_map

var _ds = argument0

if ds_exists(_ds, ds_type_map) {
	if not is_undefined(_ds[? "actions"])
	if ds_exists(_ds[? "actions"], ds_type_map)
		ds_map_destroy(_ds[? "actions"])
	if not is_undefined(_ds[? "active_actions"])
	if ds_exists(_ds[? "active_actions"], ds_type_list)
		ds_list_destroy(_ds[? "active_actions"])
		
	ds_map_destroy(_ds)
}
