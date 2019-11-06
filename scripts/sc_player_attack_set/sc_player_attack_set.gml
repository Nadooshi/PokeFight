
sc_player_stop_set()

var _a_map = action_list[| doActionNum]
with instance_create_layer(x, y, "Particles", ob_player_attack) {
	action = _a_map
	pokemon_id = other.id
	sprite_index = asset_get_index(_a_map[? "anim"])
}

canMove = false
timeout = 24
scBehaviour = sc_player_attack

