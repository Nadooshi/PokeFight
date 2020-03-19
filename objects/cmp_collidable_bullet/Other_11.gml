/// @desc After collision

if object_is_ancestor(collided_with.object_index, ob_player) or (collided_with.object_index == ob_player) {
	if (action[? "tgTo"] & collided_with.position_stage) != 0 {
		// check accuracy
		if sc_check_affect(pokemon_id, collided_with, action) 
		if sc_check_accuracy(id, collided_with, action) {
			accuracy_done_for = collided_with
			instance_destroy()
		}
	}
} else
	instance_destroy()
