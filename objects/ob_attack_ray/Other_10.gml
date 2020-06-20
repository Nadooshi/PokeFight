/// @desc 

// Inherit the parent event
event_inherited();

if not instance_exists(pokemon_id)
	exit

	// create bullet
	bullet = instance_create_layer(x, y+9, "Particles", ob_bullet_ray)
	ds_map_copy(bullet.action, action)
	bullet.pokemon_id = pokemon_id
	bullet.hurt_time = hurt_time
	bullet.timeout = 30
	bullet.damage_mod = damage_mod
	bullet.accuracy_mod = accuracy_mod
	bullet.direction = pokemon_id.direction
	bullet.image_angle = bullet.direction
	bullet.sprite_index = asset_get_index(action[? "p_anim"])
	bullet.image_blend = sc_make_attack_colour(action)
	var _snd = choose(snd_attack_range_0, snd_attack_range_1, snd_attack_range_2)
	sc_play_sound(_snd, false)
	sc_play_sound_element("element")
	sc_play_sound_element("material")
