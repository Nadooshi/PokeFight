/// @desc 

if not init 
	event_perform(ev_other, ev_user0)

event_inherited()

if not shot_done {
	var _t = 60 * 0.1 * action[? "range"]
	var _d = 999
	if instance_exists(pokemon_id.target)
		_d = distance_to_point(pokemon_id.target.x, pokemon_id.target.y) / 3 + 8
	 _t = min(_t, _d)
		
	shot_done = true
	// create bullet
	bullet = instance_create_layer(x, y+9, "Particles", ob_bullet_mortar)
	ds_map_copy(bullet.action, action)
	bullet.pokemon_id = pokemon_id
	bullet.hurt_time = hurt_time
	bullet.damage_mod = damage_mod
	bullet.accuracy_mod = accuracy_mod
	bullet.timeout = _t //60 * 0.1 * action[? "range"]
	bullet.upgea = _t
	bullet.direction = pokemon_id.direction
	bullet.image_angle = bullet.direction
	bullet.sprite_index = asset_get_index(action[? "p_anim"])
	bullet.image_blend = sc_make_attack_colour(action)
	
	var _snd = choose(snd_attack_mortar_0, snd_attack_mortar_1, snd_attack_mortar_2)
	sc_play_sound(_snd, false)
	sc_play_sound_element("element")
	sc_play_sound_element("material")
}

