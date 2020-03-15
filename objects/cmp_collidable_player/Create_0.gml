/// @desc For ob_player

coll_area = instance_create_depth(x, y + 12, -100, ob_collision_area)
coll_area.parent = id
coll_area.sprite_index = object_get_sprite(cmp_collidable_player)
collided_with = noone

