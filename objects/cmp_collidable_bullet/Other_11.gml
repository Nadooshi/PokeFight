/// @desc After collision

if object_is_ancestor(collided_with.object_index, ob_player) or (collided_with.object_index == ob_player) {
	if (action[? "tgTo"] & collided_with.position_stage) != 0 {
		// check accuracy
		if sc_check_affect(pokemon_id, collided_with, action[? "affect"]) 
		if sc_check_accuracy(id, collided_with, action) {
			accuracy_done_for = collided_with
			instance_destroy()
		}
	}
} else
if object_is_ancestor(collided_with.object_index, ob_bullet) {
	if pokemon_id.trainer != collided_with.pokemon_id.trainer
	if action[? "bullet_phys"] != _BULLET_PH.piercer {
		instance_destroy()
		instance_destroy(collided_with)
	}
} else
	instance_destroy()

