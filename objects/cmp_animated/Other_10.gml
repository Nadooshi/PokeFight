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
		if string_pos(_sp_name, _asset_name) > 0 {
			_props = string_copy(_asset_name, string_pos("___", _asset_name)+3, string_length(_asset_name))
//			show_message(sprite_get_name(sprite_index)+" -> "+sprite_get_name(_asset)+" ("+_props+")")
		}
		p_looped = string_pos("L", _props) > 0
		p_4dir   = string_pos("4", _props) > 0
		p_stable = string_pos("S", _props) > 0
	}
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
}

// stable
if p_stable
	image_angle = 0

image_index = start_frame
