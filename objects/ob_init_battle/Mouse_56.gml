/// @desc /// Disabled

// set selection
exit

var _ok = false;
var _map_id = noone;
selected_id = noone;

with ob_player {
	selected = point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)
	if not _ok {
		_ok = selected
		if _ok selected_id = id
	}
	_map_id = pokemon_map
	with ob_ui_pokeface 
	if _map_id == list[| index]
		selected = other.selected
}

_map_id = noone

if not _ok
with ob_ui_pokeface {
	selected = point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom)
	_ok = selected
	_map_id = list[| index]
	with ob_player 
	if _map_id == pokemon_map {
		selected = other.selected
		if _ok selected_id = id
	}
	if _ok break
}

sc_battle_update_actions()
