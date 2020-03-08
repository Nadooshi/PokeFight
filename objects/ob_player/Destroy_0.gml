/// @desc 

event_inherited()

sc_clear_pokemon(pokemon_map)
ds_map_destroy(pokemon_map)

var a_map = noone
for(var i=0; i< ds_list_size(action_list); i++) {
	a_map = action_list[| i]
	if ds_exists(a_map, ds_type_map) {
		if not is_undefined(a_map[? "active"]) and ds_exists(a_map[? "active"], ds_type_map)
			ds_map_destroy(a_map[? "active"])
		ds_map_destroy(a_map)
	
	}
}

ds_list_destroy(action_list)

with instance_create_depth(x, y, depth, ob_explosion) {
	sprite_index = other.sprite_index
	image_index  = other.image_index
	image_xscale = other.image_xscale
	image_yscale = other.image_yscale
	init_image_index = image_index
	init_sprite_index = sprite_index
}

instance_destroy(id, false)
