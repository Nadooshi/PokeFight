/// @desc Init

// Inherit the parent event
event_inherited();

bullet = instance_create_layer(x, y, "Particles", ob_damage_area)
bullet.x += cos(degtorad(-direction)) * 20
bullet.y += sin(degtorad(-direction)) * 20
ds_map_copy(bullet.action, action)
bullet.radius = 1
bullet.pokemon_id = pokemon_id
bullet.hurt_time = hurt_time

