/// @desc For ob_player

init = false

coll_area = instance_create_depth(x, y + 12, -100, ob_collision_area)
coll_area.parent = id
coll_area.sprite_index = object_get_sprite(cmp_collidable)
collided_with = noone

