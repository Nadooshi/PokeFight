/// @desc After coliision

var _dir = point_direction(coll_area.x, coll_area.y, collided_with.coll_area.x, collided_with.coll_area.y)


if size >= collided_with.size {
	var _amount = maxSpeed
	if variable_instance_exists(collided_with, "maxSpeed")
		_amount = collided_with.maxSpeed
	collided_with.coll_area.x += lengthdir_x(_amount, _dir)
	collided_with.coll_area.y += lengthdir_y(_amount, _dir)
}

x = coll_area.x
y = coll_area.y - 12
