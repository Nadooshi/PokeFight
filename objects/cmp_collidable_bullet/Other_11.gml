/// @desc After collision

if object_is_ancestor(collided_with.object_index, ob_player) or (collided_with.object_index == ob_player) {
	if (action[? "tgTo"] & collided_with.position_stage) != 0 
	if pokemon_id.trainer != collided_with.trainer
		instance_destroy()
} else
	instance_destroy()
