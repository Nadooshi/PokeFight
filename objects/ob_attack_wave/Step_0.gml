/// @desc 

if not init 
	event_perform(ev_other, ev_user0)
	
event_perform_object(ob_composed, ev_step, ev_step_normal)

if not shot_done {
	shot_done = true
	// create bullet
	bullet = instance_create_layer(x, y+9, "Particles", ob_bullet_wave)
	ds_map_copy(bullet.action, action)
	bullet.pokemon_id = pokemon_id
	bullet.hurt_time = hurt_time
	bullet.timeout = 60 * 0.1 * action[? "range"]
	bullet.damage_mod = damage_mod
	bullet.accuracy_mod = accuracy_mod
	bullet.direction = pokemon_id.direction
	bullet.image_angle = bullet.direction
	bullet.sprite_index = asset_get_index(action[? "p_anim"])
	bullet.image_blend = sc_make_attack_colour(action)
	if action[? "range"] = 0
		bullet.d_size = 0
	else
		bullet.d_size = ((action[? "radius"] * 2) / bullet.timeout)

	var _snd = choose(snd_attack_wave_0, snd_attack_wave_1, snd_attack_wave_2)
	sc_play_sound(_snd, false)
	sc_play_sound_element("element")
	sc_play_sound_element("material")
}

if not instance_exists(pokemon_id) or anim_ended
	instance_destroy()
