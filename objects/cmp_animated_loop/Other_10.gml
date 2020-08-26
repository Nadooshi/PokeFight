/// @desc

// Inherit the parent event
event_inherited();

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
		p_looped = not (string_pos("N", _props) > 0)
	}
}
