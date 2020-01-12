/// @desc 

if not init {
	init = true

	// for sprite with 4 directions inside
	start_frame = dirframe[pokemon_id.dir]
	stop_frame = start_frame + 4
	image_index = start_frame
	visible = true
}

if not instance_exists(bullet) 
if image_index >= start_frame + 2 {
	// create bullet
	bullet = instance_create_layer(x, y, "Particles", ob_bullet)
	bullet.action = action
	bullet.pokemon_id = pokemon_id
	bullet.hurt_time = hurt_time
	bullet.timeout = 60 * 0.1 * action[? "range"]
	bullet.direction = pokemon_id.direction
	bullet.image_angle = bullet.direction
	bullet.sprite_index = asset_get_index(action[? "p_anim"])
	bullet.image_blend = sc_make_attack_colour(action)
}

if image_index >= (stop_frame-0.2) {
	instance_destroy()
}

x = pokemon_id.x
y = pokemon_id.y
