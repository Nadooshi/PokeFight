/// @desc 

if not init 
	event_perform(ev_other, ev_user0)

event_inherited()

event_perform_object(ob_composed, ev_step, ev_step_normal)

if not shot_done {
	var _t = 60 * 0.1 * action[? "range"]
	_d = _t
	if instance_exists(pokemon_id)
		var _d = distance_to_point(pokemon_id.target.x, pokemon_id.target.y) / 3
	 if _t > _d
		_t = _d
		
	shot_done = true
	// create bullet
	bullet = instance_create_layer(x, y+9, "Particles", ob_bullet_mortar)
	ds_map_copy(bullet.action, action)
	bullet.pokemon_id = pokemon_id
	bullet.hurt_time = hurt_time
	bullet.timeout = _t //60 * 0.1 * action[? "range"]
	bullet.upgea = _t
	bullet.direction = pokemon_id.direction
	bullet.image_angle = bullet.direction
	bullet.sprite_index = asset_get_index(action[? "p_anim"])
	bullet.image_blend = sc_make_attack_colour(action)
}

if anim_ended
	instance_destroy()
