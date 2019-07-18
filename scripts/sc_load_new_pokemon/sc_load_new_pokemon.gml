/// @arg name - loaded pokemon

var _name = argument0
var _pokemon = ds_map_create()

sc_load_pokemon_dex(_name, _pokemon)

	_pokemon[? "exp"] = 0
	_pokemon[? "level"] = 0
	_pokemon[? "loses"] = 0
	_pokemon[? "wins"] = 0
	_pokemon[? "artefact"] = noone
	_pokemon[? "berry"] = noone
	_pokemon[? "potion"] = noone
	_pokemon[? "active_actions"] = ds_list_create()	
	ds_list_clear(_pokemon[? "active_actions"])

return _pokemon
