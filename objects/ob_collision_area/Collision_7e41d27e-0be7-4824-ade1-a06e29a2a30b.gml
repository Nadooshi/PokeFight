/// @desc

var _dir = point_direction(other.x, other.y, x, y)
collided = other.id
other.collided = id

//if other.parent.size != _SIZE.immobile {
	if parent.size <= other.parent.size {
		x += cos(degtorad(_dir)) //* 10
		y += sin(degtorad(_dir)) //* 10
//		x -= lengthdir_x(10, _dir)
//		y -= lengthdir_y(10, _dir)
		parent.x = x
		parent.y = y
	}
	//show_message(string(_dir))
//}