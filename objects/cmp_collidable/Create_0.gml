/// @desc
init = false

size = _SIZE.immobile
coll_area = instance_create_layer(x, y, "Game", ob_collision_area)
coll_area.parent = id
coll_area.depth = -100
