/// @desc For ob_bullet

coll_area = instance_create_depth(x, y, -100, ob_collision_line)
coll_area.parent = id

collided_with = noone
collided_with_list = ds_list_create()


