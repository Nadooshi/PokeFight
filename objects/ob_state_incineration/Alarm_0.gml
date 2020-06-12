/// @desc Deal damage

with pokemon_id {
	var _dmg = sc_calculate_numeric_damage(other.damage, id, other.action[? "element"], -1)
	sc_hurt(_dmg)
}
/* //debug message
var _el = ds_map_find_value(pokemon_id.pokemon_map,"elemental_type")
var _mat = ds_map_find_value(pokemon_id.pokemon_map,"material_type")
var _dmg = damage * _coeff
_el = elemental_text[_el]
_mat = elemental_text[_mat]
show_message(_el + " & " + _mat + "DMG - " + string(_dmg))
*/
alarm[0] = period;
if --hit_count < 0
	instance_destroy()
	
