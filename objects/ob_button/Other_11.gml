/// @desc Draw changed

if ds_exists(dedicated_map, ds_type_map)
if previous_map[? parameter_name] != dedicated_map[? parameter_name] {
	draw_sprite_ext(sp_yesno, 1, x+8, y+4, 0.2, 0.2, 0, c_white, 1)
}

