/// @desc After collision

event_inherited()

var _dot_alive = false,
	_chain_count = 0,
	_chain_x = 0,
	_chain_y = 0,

var _wave_dots = 0,
	_wave_x = 0,
	_wave_y = 0
var _wave_count = 0


for (var i=0; i<dot_count; i++) {
	_dot_alive = instance_exists(dot[i]) 
	if _dot_alive {
		_chain_count ++
		_chain_x += dot[i].x
		_chain_y += dot[i].y
	} else
	if _chain_count>0 {
		_wave_dots[_wave_count] = _chain_count
		_wave_x[_wave_count] = _chain_x / _chain_count
		_wave_y[_wave_count] = _chain_y / _chain_count
		_wave_count++
		_chain_count = 0	
		_chain_x = 0
		_chain_y = 0
	}
}

if _chain_count>0 {
	_wave_dots[_wave_count] = _chain_count
	_wave_x[_wave_count] = _chain_x / _chain_count
	_wave_y[_wave_count] = _chain_y / _chain_count
	_wave_count++
}

// create waves
for (var i=0; i<_wave_count; i++) 
if size/5 * _wave_dots[i] > 0.5 {
	// create bullet
	bullet = instance_create_layer(_wave_x[i], _wave_y[i], "Particles", ob_bullet_wave)
	ds_map_copy(bullet.action, action)
	bullet.pokemon_id = pokemon_id
	bullet.hurt_time = hurt_time
	bullet.timeout = timeout
	bullet.damage_mod = damage_mod
	bullet.accuracy_mod = accuracy_mod
	bullet.direction = direction
	bullet.sprite_index =sprite_index
	bullet.image_blend = image_blend
	bullet.size = size/5 * _wave_dots[i]
	bullet.d_size = d_size
}

instance_destroy()
