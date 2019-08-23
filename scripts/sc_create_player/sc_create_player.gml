/// @arg map

var _map = argument0
var _result = noone
var _sp = noone

with instance_create_layer(0, 0, "Game", ob_player) {
	_result = id
	pokemon_map = _map
	shadowFrame = pokemon_map[? "size"]
	dAngle = 5 - pokemon_map[? "size"]
	_sp = asset_get_index("sp_pokeworld_" + string(pokemon_map[? "face"]))
	if sprite_exists(_sp)
		sprite_index = _sp
}

return _result
