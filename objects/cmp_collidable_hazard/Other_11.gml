/// @desc Atfer collision

var _dir = point_direction(coll_area.x, coll_area.y, collided_with.coll_area.x, collided_with.coll_area.y)

collided_with.coll_area.x += lengthdir_x(collided_with.maxSpeed , _dir)
collided_with.coll_area.y += lengthdir_y(collided_with.maxSpeed, _dir)

