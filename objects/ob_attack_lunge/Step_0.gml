/// @desc 

if not init {
	init = true
	pokemon_id.canMove = false
	
	start_frame = dirframe[pokemon_id.dir]
	stop_frame = start_frame + 4
	image_index = start_frame
	visible = true
	
	bullet = instance_create_layer(x, y, "Particles", ob_damage_area)
	bullet.radius = (action[? "radius"] + 1) * 8
	bullet.pokemon_id = pokemon_id
	bullet.hurt_time = hurt_time
}

timeout--
if timeout <=0 {
	pokemon_id.canMove = true
	instance_destroy()
}

// loop anim
if image_index >= (stop_frame-0.2)
	image_index = start_frame

// move damage_area along
x = pokemon_id.x
y = pokemon_id.y
bullet.x = x + pokemon_id.hspeed * 3
bullet.y = y + pokemon_id.vspeed * 3
