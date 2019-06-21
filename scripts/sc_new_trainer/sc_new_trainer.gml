var result = ds_map_create()

ds_map_add(result, "world_x", 0)
ds_map_add(result, "world_y", 0)

ds_map_add(result, "caught_pokemon_list", ds_list_create()) // list of map ids from sc_new_pokemon
ds_map_add(result, "active_pokemon_list", ds_list_create()) // list of list ids from caught_pokemon_list

ds_map_add(result, "inventory", array_create(trainer_inv_size, noone))  // array of map ids from sc_new_inv_item

ds_map_add(result, "awards", ds_list_create())



