/// @desc 

if not init 
	event_perform(ev_other, ev_user0)
	
event_perform_object(object_get_parent(object_get_parent(object_index)), ev_step, ev_step_normal)

if not shot_done {
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

if anim_ended
	instance_destroy()

x = pokemon_id.x
y = pokemon_id.y
