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
bullet.damage_mod = damage_mod
bullet.accuracy_mod = accuracy_mod

var _snd = choose(snd_attack_front_0, snd_attack_front_1, snd_attack_front_2)
sc_play_sound(_snd, false)
sc_play_sound_element("element")
sc_play_sound_element("material")


