/// @desc Calculate state pos

if not instance_exists(pokemon_id)
	exit
	
if ds_exists(pokemon_id.states, ds_type_list) {
	_w = (ds_list_size(pokemon_id.states)-1) * (sprite_get_width(sp_state) * 0.15)*0.5
	_y = y - sprite_height * 0.5;
}

