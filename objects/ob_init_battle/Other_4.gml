/// @desc

var _start_area = instance_find(ob_start_area, 0)

var _list = current_trainer[? "active_pokemon_list"]
var _sp = ""

for (var i=0; i<ds_list_size(_list); i++) 
with instance_create_layer(_start_area.x, _start_area.y, "Game", ob_player) {
	while not place_meeting(x, y, ob_start_area) {
		x = _start_area.bbox_left + random(_start_area.bbox_right  - _start_area.bbox_left)
		y = _start_area.bbox_top  + random(_start_area.bbox_bottom - _start_area.bbox_top )
	}
	pokemon_map = _list[| i]
	_sp = asset_get_index("sp_pokeworld_" + string(pokemon_map[? "face"]))
	if sprite_exists(_sp)
		sprite_index = _sp
}

