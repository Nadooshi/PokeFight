
event_inherited()

var _p_list = current_trainer[? "active_pokemon_list"]
for (var i=0; i<ds_list_size(_p_list); i++) {
	var _pokemon = _p_list[| i]
	if ds_list_size(_pokemon[? "active_actions"]) < 1 {
		// add 6 first actions
		var _rnd_action = ds_map_find_first(_pokemon[? "actions"])
		repeat (6) {
			if not is_undefined(_rnd_action) or
			(ds_list_find_index(_pokemon[? "active_actions"],  _rnd_action) = -1) {
				ds_list_add(_pokemon[? "active_actions"], _rnd_action)
				_rnd_action = ds_map_find_next(_pokemon[? "actions"], _rnd_action)
			} else
				continue
		}
	}
}

sc_save_trainer()

if ds_list_size(_p_list) > 0 
	room_goto_previous()
