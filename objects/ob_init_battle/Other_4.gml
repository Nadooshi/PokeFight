/// @desc

var _start_area = instance_find(ob_start_area, 0)


ds_list_copy(player1_list, current_trainer[? "active_pokemon_list"])

for (var i=0; i<ds_list_size(player1_list); i++) 
with sc_create_player(player1_list[| i]) {
	while not place_meeting(x, y, ob_start_area) {
		x = _start_area.bbox_left + random(_start_area.bbox_right  - _start_area.bbox_left)
		y = _start_area.bbox_top  + random(_start_area.bbox_bottom - _start_area.bbox_top )
	}
}

with ob_ui_pokeface_1 
	list = player1_list

with ob_ui_pokeface_2
	list = player2_list

with ob_ui_pokeface
	event_perform(ev_other, ev_user0)

with ob_frame_inv 
	sc_group_ui_objects(id)
sc_battle_update_actions()