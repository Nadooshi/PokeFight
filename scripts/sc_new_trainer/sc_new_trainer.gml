var result = ds_map_create()

result[? "name"]	= ""
result[? "avatar"]	= 0

result[? "world_x"] = 0
result[? "world_y"] = 0

result[? "caught_pokemon_list"] = ds_list_create() // list of maps from sc_load_pokemon
result[? "active_pokemon_list"] = ds_list_create() // list of list ids from caught_pokemon_list

result[? "inventory"]	= array_create(trainer_inv_size, noone)  // array of map ids from sc_new_inv_item

result[? "awards"]		= ds_list_create()


return result


// what if ds_map you try to evaluate to already exists?
