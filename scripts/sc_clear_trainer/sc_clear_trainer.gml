var _map = argument0

if not is_undefined(_map)
if ds_exists(_map, ds_type_map) {
	if not is_undefined(_map[? "caught_pokemon_list"])
	if ds_exists(_map[? "caught_pokemon_list"], ds_type_list)
		ds_list_destroy(_map[? "caught_pokemon_list"])
		
	if not is_undefined(_map[? "active_pokemon_list"])
	if ds_exists(_map[? "active_pokemon_list"], ds_type_list)
		ds_list_destroy(_map[? "active_pokemon_list"])
		
	if not is_undefined(_map[? "awards"])
	if ds_exists(_map[? "awards"], ds_type_list)
		ds_list_destroy(_map[? "awards"])
		
	ds_map_destroy(_map)
}
