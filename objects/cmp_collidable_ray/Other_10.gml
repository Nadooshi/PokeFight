/// @desc  Init

coll_area.direction = direction
coll_area.length = length
init = true

with coll_area
	event_perform(ev_step, ev_step_normal)
