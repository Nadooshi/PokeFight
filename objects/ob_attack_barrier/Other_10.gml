/// @desc 

// Inherit the parent event
event_inherited();

if not instance_exists(pokemon_id.target)
	exit

var _count = 0
switch action[? "radius"] {
case 0: _count = 1; break
case 1: _count = 3; break
case 2: _count = 5; break
}

var _x0 = 0
var _y0 = 0
var _range = 60 * 0.1 * 3 * action[? "range"] + 16
_range = min(_range, distance_to_point(pokemon_id.target.x, pokemon_id.target.y))
var _dir = point_direction(x, y, pokemon_id.target.x, pokemon_id.target.y)
_x0 = x + lengthdir_x(_range, _dir) 
_y0 = y + lengthdir_y(_range, _dir) + 12

var _pos = 0
_pos[4, 1] = 0

var _angle = degtorad(_dir)
var _step = 16
var _h_count = -floor(_count * 0.5)
for (var i=0; i<_count; i++) {
	_pos[i*2  , 0] = _x0 + sin(_angle) * _step * (_h_count + i)
	_pos[i*2+1, 1] = _y0 + cos(_angle) * _step * (_h_count + i)
}

var _x, _y
for (var i=0; i<_count; i++) {
	_x = _pos[i*2  , 0]
	_y = _pos[i*2+1, 1]
	with instance_create_layer(_x, _y, "Game", ob_barrier) {
		ds_map_copy(action, other.action)
		pokemon_id = other.pokemon_id
		health_cur = action[? "damage"] * damage_mod
		health_max = health_cur
		sprite_index = asset_get_index(action[? "p_anim"])
		image_blend = sc_make_attack_colour(action)
	}
}

var _snd = choose(snd_attack_barrier_0, snd_attack_barrier_1, snd_attack_barrier_2)
sc_play_sound(_snd, false)
sc_play_sound_element("element")
sc_play_sound_element("material")

