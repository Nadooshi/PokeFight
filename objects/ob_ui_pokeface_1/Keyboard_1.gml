/// @desc 

var _i = keyboard_key-49
if not (_i>=0 and _i<=5) exit

var _map_id = noone
if not is_undefined(list[| _i]) and ds_exists(list[| _i], ds_type_map) {
	selected = (_i = index)
	_map_id = list[| index]
	if selected 
	with ob_player {
		selected = (_map_id = pokemon_map)
		if selected {
			selected_id = id
			sc_battle_update_actions()
		}
	}	
}


 