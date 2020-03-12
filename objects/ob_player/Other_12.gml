/// @desc Bury

if pokemon_map[? "digable"] != 0
if power_cur >= power_max {
	power_cur = 0
	depth = (room_height - bbox_bottom) * 0.75	
	instance_change(ob_player_buried, false)
	sc_composed_remove_component(cmp_collidable_player, true)
	sc_composed_add_component(cmp_collidable_player_air_buried, true)
	event_perform_object(ob_player_buried, ev_create, 0)
	if init
		with instance_create_depth(x, y + 12, depth - 1, ob_particle)
			sprite_index = sp_holeworld_splash
}
