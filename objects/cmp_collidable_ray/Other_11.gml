/// @desc After collision

if action[? "bullet_phys"] != _BULLET_PH.piercer {
	// sort by distance
	var _dists = ds_list_create()
	var _coll_ids = ds_list_create()
	ds_list_copy(_coll_ids, collided_with_list);
	for (var i=0; i<ds_list_size(collided_with_list); i++) {
		_dists[| i] = floor(point_distance(x, y, collided_with_list[| i].x, collided_with_list[| i].y)) * 1000
		_dists[| i] += i
	}
	ds_list_sort(_dists, true);
	ds_list_clear(collided_with_list)
	var _i
	for (var i=0; i<ds_list_size(_coll_ids); i++) {
		_i = _dists[| i] - _dists[| i] div 1000 * 1000
		collided_with_list[| i] = _coll_ids[| _i]
	}
	ds_list_destroy(_dists)
	ds_list_destroy(_coll_ids)
}

for (i=0; i<ds_list_size(collided_with_list); i++)
if sc_does_exist(collided_with_list[| i]) {
	collided_with = collided_with_list[| i];
	if object_is_ancestor(collided_with.object_index, ob_player) or (collided_with.object_index == ob_player) {
		if (action[? "tgTo"] & collided_with.position_stage) != 0 {
			// check accuracy
			if sc_check_affect(pokemon_id, collided_with, action[? "affect"]) 
			if sc_check_accuracy(id, collided_with, action) {
				accuracy_done_for = collided_with				
				// shorten
				if action[? "bullet_phys"] != _BULLET_PH.piercer {
					length = point_distance(x1, y1, collided_with.x, collided_with.y)
					x2 = x1 + lengthdir_x(length, direction)
					y2 = y1 + lengthdir_y(length, direction)
					x = collided_with.x
					y = collided_with.y
					event_perform_object(ob_bullet, ev_destroy, 0)
					break
				}
			}
		}
	} else 	// shorten
	if action[? "bullet_phys"] != _BULLET_PH.piercer {
		length = point_distance(x1, y1, collided_with.x, collided_with.y)
		x2 = x1 + lengthdir_x(length, direction)
		y2 = y1 + lengthdir_y(length, direction)
		x = collided_with.x
		y = collided_with.y
		event_perform_object(ob_bullet, ev_destroy, 0)
		break
	}
}
