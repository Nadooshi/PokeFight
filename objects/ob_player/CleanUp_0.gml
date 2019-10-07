/// @desc 

sc_clear_pokemon(pokemon_map)
ds_map_destroy(pokemon_map)

for(var i=0; i< ds_list_size(action_list); i++)
if ds_exists(action_list[| i], ds_type_map)
	ds_map_destroy(action_list[| i])

ds_list_destroy(action_list)
