/// @desc 

if not instance_exists(pokemon_id) {
	instance_destroy()
	exit
}

var _x = pokemon_id.x - (ds_list_size(pokemon_id.states)-1) *sprite_width*0.75 ;

x = _x - sprite_width * 0.5;
y = pokemon_id.y - sprite_height * 0.5 - 14;



