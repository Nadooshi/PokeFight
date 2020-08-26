/// @desc Set AI player

var _start_area = instance_find(ob_start_area, 0)

var _list = player1_trainer[? "active_pokemon_list"]
for (var i=0; i<ds_list_size(_list); i++) 
with sc_create_player(_list[| i], player1_trainer) {
	while not place_meeting(x, y, ob_start_area) {
		x = _start_area.bbox_left + random(_start_area.bbox_right  - _start_area.bbox_left)
		y = _start_area.bbox_top  + random(_start_area.bbox_bottom - _start_area.bbox_top )
	}
//	sc_composed_add_component(cmp_control_keyb, true)
	sc_composed_add_component(cmp_control_dummy, true)

	// set pokemon id for ob_pokeface
	with ob_ui_pokeface_1
	if index = i {
		pokemon_id = other.id
		break	
	}
}

var _start_area = instance_find(ob_start_area, 1)

var _list = player2_trainer[? "active_pokemon_list"]
for (var i=0; i<ds_list_size(_list); i++) 
with sc_create_player(_list[| i], player2_trainer) {
	while not place_meeting(x, y, ob_start_area) {
		x = _start_area.bbox_left + random(_start_area.bbox_right  - _start_area.bbox_left)
		y = _start_area.bbox_top  + random(_start_area.bbox_bottom - _start_area.bbox_top )
	}
	
//=================================================================	
	sc_composed_add_component(cmp_control_dummy, true) // AI control
//=================================================================	

	// set pokemon id for ob_pokeface
	with ob_ui_pokeface_2
	if index = i {
		pokemon_id = other.id
		break	
	}
}

with ob_ui_pokeface_1 
	list = player1_trainer[? "active_pokemon_list"]

with ob_ui_pokeface_2
	list = player2_trainer[? "active_pokemon_list"]

with ob_ui_pokeface
	event_perform(ev_other, ev_user0)

with ob_frame_inv 
	sc_group_ui_objects(id)
sc_battle_update_actions()
