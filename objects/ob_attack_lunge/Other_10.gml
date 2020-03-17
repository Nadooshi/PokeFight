/// @desc  Init

// Inherit the parent event

event_inherited();

bullet = instance_create_layer(x, y, "Particles", ob_damage_area)
ds_map_copy(bullet.action, action)
bullet.radius = (action[? "radius"] + 1) * 8
bullet.pokemon_id = pokemon_id
bullet.hurt_time = hurt_time
