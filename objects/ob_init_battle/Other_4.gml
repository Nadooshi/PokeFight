/// @desc

var _start_area = instance_find(ob_start_area, 0)

var _list = current_trainer[? "active_pokemon_list"]

for (var i=0; i<ds_list_size(_list); i++) 
with sc_create_player(_list[| i]) {
	while not place_meeting(x, y, ob_start_area) {
		x = _start_area.bbox_left + random(_start_area.bbox_right  - _start_area.bbox_left)
		y = _start_area.bbox_top  + random(_start_area.bbox_bottom - _start_area.bbox_top )
	}
}

