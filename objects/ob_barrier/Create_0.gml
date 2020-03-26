/// @desc 

sc_composed_add_component(cmp_animated)

event_inherited()

sc_composed_remove_component(cmp_moving)
sc_composed_remove_component(cmp_collidable_player, true)
sc_composed_add_component(cmp_collidable_hazard, true)

depth = (room_height - bbox_top) * 0.5

pokemon_id = noone
trainer = -1
position_stage = _ATTACK_TG.ground
size = _SIZE.immobile
action = ds_map_create()

pokemon_map[? "elemental_type"] = _ELEMENTAL.none
pokemon_map[? "material_type"]  = _ELEMENTAL.none

