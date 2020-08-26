/// @desc Init
var _sp_name = ""
var _asset = noone
var _asset_name = ""
var _props = ""

if sprite_exists(sprite_index) {
	_sp_name = sprite_get_name(sprite_index)
	_asset = sprite_index - 1
	if sprite_exists(_asset) {
		_asset_name = sprite_get_name(_asset)
		if string_pos(_sp_name, _asset_name) > 0
			_props = string_copy(_asset_name, string_pos("___", _asset_name)+3, string_length(_asset_name))
		p_looped = string_pos("L", _props) > 0
		p_4dir   = string_pos("4", _props) > 0
		p_stable = string_pos("S", _props) > 0
		p_ray	 = string_pos("R", _props) > 0
	}
	sprite_speed = 1 / (60 / sprite_get_speed(sprite_index)) // 1frame / (60 gamefps / sprite_fps)
}

// normal anim
frame_count = sprite_get_number(sprite_index)
stop_frame = frame_count
image_angle = direction

// 4-directional
if p_4dir {
	frame_count /= 4
	for (var i=0; i<4; i++)
		dirframe[i] = frame_count * i

	start_frame = dirframe[dir]
	stop_frame = start_frame + frame_count 
	image_angle = 0
}

// stable
if p_stable
	image_angle = 0

// ray (repeatable)
if p_ray {
	p_looped = true
	start_value = 0
	end_value = 1.5
	mid_value = start_value
	fraction = 0.1
	phase = 0
	init_timeout = timeout
}

image_index = start_frame
