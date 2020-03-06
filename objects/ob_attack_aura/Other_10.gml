/// @desc Init

// Inherit the parent event
event_inherited();

bullet = instance_create_layer(x, y, "Particles", ob_damage_area)
bullet.action = action
bullet.radius = 0
bullet.pokemon_id = pokemon_id
bullet.hurt_time = hurt_time

max_radius =  60 * 0.1 * 3 * action[? "range"]
d_radius = max_radius / frame_count / (60 / sprite_get_speed(sprite_index))

if debug_mode
	show_message_async("range = "+string(action[? "range"])+"; frames = "+string(frame_count)+"; speed = " +string(sprite_get_speed(sprite_index)))
