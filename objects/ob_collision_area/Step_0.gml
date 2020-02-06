/// @desc
if instance_exists(collided) {
	var _dir = point_direction(x, y, collided.x, collided.y)
	collided = noone
}
