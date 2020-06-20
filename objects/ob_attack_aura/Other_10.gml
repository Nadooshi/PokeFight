/// @desc Init

// Inherit the parent event
event_inherited();

bullet = instance_create_layer(x, y, "Particles", ob_damage_area)
ds_map_copy(bullet.action, action)
bullet.radius = 0
bullet.pokemon_id = pokemon_id
bullet.hurt_time = hurt_time
bullet.damage_mod = damage_mod
bullet.accuracy_mod = accuracy_mod

max_radius =  60 * 0.1 * 3 * action[? "range"]
d_radius = max_radius / frame_count / (60 / sprite_get_speed(sprite_index))

var _snd = choose(snd_attack_aura_0, snd_attack_aura_1, snd_attack_aura_2)
sc_play_sound(_snd, false)
sc_play_sound_element("element")
sc_play_sound_element("material")

