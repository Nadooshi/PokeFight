/// @desc 

var _map_id = noone
if not selected {
	_map_id = pokemon_map
	with ob_ui_pokeface 
		selected = (_map_id == list[| index])
	with ob_player
		selected = false
	selected = true
	selected_id = id
}
