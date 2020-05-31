/// @desc 

if not sc_does_exist(parent) {
	instance_destroy()
	exit
}

if not parent.init
	exit

with parent {
	ds_list_clear(other.coll_list)
	ds_list_clear(collided_with_list)
	var _count = collision_line_list(x1, y1, x2, y2, ob_collision_area, false, false, other.coll_list, false)
	for (var i=0; i<_count; i++)
		collided_with_list[| i] = other.coll_list[| i].parent
	if _count > 0
		event_perform(ev_other, ev_user1)  // after collision
}
