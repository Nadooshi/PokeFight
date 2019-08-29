/// @desc Update

// Inherit the parent event
event_inherited();

if not is_undefined(parent) and instance_exists(parent) {
	var _width = parent.bbox_right - parent.bbox_left 
	var _sW = sprite_get_width(sprFrame)
	xScale = (_width - _sW*2) / _sW
	xFrame = parent.x
	wFrame = _sW * xScale
}
