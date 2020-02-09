/// @desc For ob_hazard

coll_area = instance_create_depth(x, y, -100, ob_collision_area)
coll_area.parent = id

coll_area.sprite_index = sprite_index
coll_area.image_xscale = image_xscale
coll_area.image_yscale = image_yscale
size = _SIZE.immobile
