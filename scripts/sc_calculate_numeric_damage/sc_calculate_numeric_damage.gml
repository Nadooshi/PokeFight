///@arg damage_value
///@arg pokemon_id
///@arg element_damage
///@arg material_damage

// calculates numeric damage

var _dmg = argument0
var _p_id = argument1
var _elem_action = 0
_elem_action[0] = argument2
_elem_action[1] = argument3
var _p_target = _p_id.pokemon_map

var _p_target_elem = 0
_p_target_elem[_e.element ] = (_p_target[? "elemental_type"] != _ELEMENTAL.none) ? element_table[_p_target[? "elemental_type"]] : -1 
_p_target_elem[_e.material] = (_p_target[? "material_type" ] != _ELEMENTAL.none) ? element_table[_p_target[? "material_type" ]] : -1 

var _coeff = 0, _div = 0
for (var _pe = 0; _pe < 2; _pe++) 
if is_array(_p_target_elem[_pe]) {
	_div += 2
	var _table_entry = _p_target_elem[_pe]
	for (var _ae = 0; _ae < 2; _ae++) {
		var _c_ = 1
		_c_ *= (_table_entry[0] == _elem_action[_ae]) ? 0.5 : 1
		_c_ *= (_table_entry[1] == _elem_action[_ae]) ? 2 : 1
		_c_ *= (_table_entry[2] == _elem_action[_ae]) ? 2 : 1
		_coeff += _c_
	}
}
_coeff = _coeff / _div

return _dmg * _coeff

