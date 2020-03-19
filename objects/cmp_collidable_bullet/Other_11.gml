/// @desc After collision

if object_is_ancestor(collided_with.object_index, ob_player) or (collided_with.object_index == ob_player) {
	if (action[? "tgTo"] & collided_with.position_stage) != 0 {
		if sc_check_affect(pokemon_id, collided_with, action)
			instance_destroy()
	}
} else
	instance_destroy()
