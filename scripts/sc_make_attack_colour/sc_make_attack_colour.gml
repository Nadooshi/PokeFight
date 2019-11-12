/// @arg action_map
/// returns correct action colour

var _map = argument0
var col_el = _map[? "element"]
var col_mat = _map[? "material"]

if not is_undefined(col_el) and not is_undefined(col_mat) {
	var bal=0.5,
		dmge=_map[? "dmg_element"],
		dmg= _map[? "damage"]
	if dmg != 0
		bal = dmge / dmg
	else
		bal = 0.5
	return merge_color(material_colour[col_mat], material_colour[col_el], bal)
} else
	return c_white
