/// @desc 

sc_composed_add_component(cmp_moving)
sc_composed_add_component(cmp_animated_loop)

event_inherited();

action = ds_map_create() // copy of pokemon action 
pokemon_id = 0
hurt_time = 0
timeout = 0
damage_mod = 1
accuracy_mod = 0

moveSpeed = 3
image_xscale = 1.5
image_yscale = 1.5

size = _SIZE.tiny  // for size of collision area
list_missed = ds_list_create()
accuracy_done_for = noone
