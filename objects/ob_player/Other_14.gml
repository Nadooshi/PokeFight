/// @desc Fly

if power_cur >= power_max {
	power_cur = 0
	instance_change(ob_player_flying, false)
	sc_composed_remove_component(cmp_collidable_player, true)
	event_perform_object(ob_player_flying, ev_create, 0)
	with instance_create_depth(x, y + 12, depth - 1, ob_particle)
		sprite_index = sp_holeworld_splash
}
