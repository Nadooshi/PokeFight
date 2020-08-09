/// @desc 

if not instance_exists(pokemon_id) {
	instance_destroy()
	exit
}

var _w = (ds_list_size(pokemon_id.states)-1) *sprite_width*0.5 ;
var _x = pokemon_id.x + (sprite_width * 0.5 * index) - _w*0.5

x = _x - sprite_width * 0.5;
y = pokemon_id.y - sprite_height * 0.5 - 14;

