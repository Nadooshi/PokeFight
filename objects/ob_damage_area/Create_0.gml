/// @desc 

sc_composed_add_component(cmp_animated)

event_inherited()

radius = 0
pokemon_id = noone
action = ds_map_create()
hurt_time = 0
timeout = -1
damage_mod = 1
accuracy_mod = 0

last_damaged = ds_list_create() // already damaged
list_missed = ds_list_create()
just_damaged = ds_list_create() // to be damaged
accuracy_done_for = noone

image_xscale = 1.5
image_yscale = 1.5

chain_dmg_target = noone

