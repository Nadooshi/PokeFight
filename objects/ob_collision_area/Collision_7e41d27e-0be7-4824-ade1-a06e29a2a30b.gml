/// @desc

var _dir = point_direction(x, y, other.x, other.y)

if parent.size >= other.parent.size {
	var _amount = other.parent.moveSpeed//coll_force
	if variable_instance_exists(parent, "maxSpeed")
		_amount = parent.maxSpeed
	other.x += lengthdir_x(_amount, _dir)
	other.y += lengthdir_y(_amount, _dir)
	with other.parent
		event_perform(ev_other, ev_user1)
}
