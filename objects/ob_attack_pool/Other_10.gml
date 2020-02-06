/// @desc Init

// Inherit the parent event
event_inherited();

bullet = instance_create_layer(x, y, "Particles", ob_bullet_pool)
bullet.action = action
bullet.radius = (action[? "radius"] + 1) * 8
bullet.pokemon_id = pokemon_id
bullet.hurt_time = hurt_time
bullet.timeout = action[? "range"] * 60
bullet.sprite_index = asset_get_index(action[? "p_anim"])
bullet.image_blend = sc_make_attack_colour(action)
