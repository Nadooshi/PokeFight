/// @desc For ob_bullet

coll_area = instance_create_depth(x, y, -100, ob_collision_area)
coll_area.parent = id
coll_area.sprite_index = object_get_sprite(cmp_collidable_bullet)

collided_with = noone

