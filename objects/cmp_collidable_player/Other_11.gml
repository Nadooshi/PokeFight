/// @desc After collision

var _dir = point_direction(coll_area.x, coll_area.y, collided_with.coll_area.x, collided_with.coll_area.y)

if object_is_ancestor(collided_with.object_index, ob_player) or collided_with.object_index == ob_player {
	if (collided_with.position_stage = _ATTACK_TG.ground) and (position_stage = _ATTACK_TG.ground)
	if size >= collided_with.size {
//		var _amount = maxSpeed
//		if variable_instance_exists(collided_with, "maxSpeed")
		var _amount = max(moveSpeed, maxSpeed)
		with collided_with {
			coll_area.x += lengthdir_x(_amount, _dir)
			coll_area.y += lengthdir_y(_amount, _dir)
			x = coll_area.x
			y = coll_area.y - 12
		}
	}
}
x = coll_area.x
y = coll_area.y - 12
