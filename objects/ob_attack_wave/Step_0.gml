/// @desc 

if not init {
	init = true

	// for sprite with 4 directions inside
	start_frame = dirframe[pokemon_id.dir]
	stop_frame = start_frame + 4
	image_index = start_frame
	visible = true
}

if not shot_done
if image_index >= start_frame {
	shot_done = true
	// create bullet
	bullet = instance_create_layer(x, y+9, "Particles", ob_bullet_wave)
	bullet.action = action
	bullet.pokemon_id = pokemon_id
	bullet.hurt_time = hurt_time
	bullet.timeout = 60 * 0.1 * action[? "range"] * 2
	bullet.direction = pokemon_id.direction
	bullet.image_angle = bullet.direction
	bullet.sprite_index = asset_get_index(action[? "p_anim"])
	bullet.image_blend = sc_make_attack_colour(action)
	bullet.size = 1
	if action[? "range"] = 0
		bullet.d_size = 0
	else
		bullet.d_size = ((action[? "radius"] * 2) / bullet.timeout)
}

if image_index >= (stop_frame-0.2) {
	instance_destroy()
}

x = pokemon_id.x
y = pokemon_id.y
