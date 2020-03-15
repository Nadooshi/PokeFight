/// @desc Bury

instance_change(ob_player, false)

event_perform_object(ob_player_flying, ev_destroy, 0)

sc_composed_remove_component(cmp_collidable_player_air_buried, true)
sc_composed_add_component(cmp_collidable_player, true)

with instance_create_depth(x, y + 12, depth - 1, ob_particle)
	sprite_index = sp_holeworld_splash

