/// @arg pokemon_ds_map

var _ds = argument0

if ds_exists(_ds, ds_type_map) {
	if sc_does_exist(_ds[? "actions"])
		ds_map_destroy(_ds[? "actions"])
	if sc_does_exist(_ds[? "active_actions"])
		ds_list_destroy(_ds[? "active_actions"])
		
	ds_map_destroy(_ds)
}
