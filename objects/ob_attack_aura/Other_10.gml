/// @desc Init

// Inherit the parent event
event_inherited();

bullet = instance_create_layer(x, y, "Particles", ob_damage_area)
bullet.action = action
bullet.radius = 60 * 0.1 * 3 * action[? "range"]
bullet.pokemon_id = pokemon_id
bullet.hurt_time = hurt_time

