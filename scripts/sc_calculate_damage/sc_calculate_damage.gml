/// @arg action_map
/// @arg target_pokemon_map
enum _e {
	element  = 0,
	material = 1
}

var _info = ""

var _action = argument0,
	_p_target = argument1

var _dmg
_dmg[0, _e.element ] = _action[? "dmg_element"]
_dmg[1, _e.element ] = _action[? "dmg_element"]
_dmg[0, _e.material] = _action[? "dmg_material"]
_dmg[1, _e.material] = _action[? "dmg_material"]

var _elem_action = 0
_elem_action[_e.element ] = _action[? "element" ] 
_elem_action[_e.material] = _action[? "material"]

var _p_target_elem = 0
_p_target_elem[_e.element ] = (_p_target[? "elemental_type"] != _ELEMENTAL.none) ? element_table[_p_target[? "elemental_type"]] : -1 
_p_target_elem[_e.material] = (_p_target[? "material_type" ] != _ELEMENTAL.none) ? element_table[_p_target[? "material_type" ]] : -1 

var _p_base_elem = 0
_p_base_elem[_e.element ] = _p_target[? "elemental_type"]
_p_base_elem[_e.material] = _p_target[? "material_type" ]

_info = _action[? "name"] + "\n"

for (var _pe = 0; _pe < 2; _pe++) 
if is_array(_p_target_elem[_pe]) {
	var _table_entry = _p_target_elem[_pe]
	for (var _ae = 0; _ae < 2; _ae++) {
		var _dmg_coeff = 1
		_dmg_coeff *= (_table_entry[0] == _elem_action[_ae]) ? 0.5 : 1
			_info += elemental_text[_elem_action[_ae]] + " -> " + elemental_text[_p_base_elem[_pe]] + ". "
			_info += "Coeff = " + string(_dmg_coeff) + "\n"
		_dmg_coeff *= (_table_entry[1] == _elem_action[_ae]) ? 2 : 1
			_info += elemental_text[_elem_action[_ae]] + " -> " + elemental_text[_p_base_elem[_pe]] + ". "
			_info += "Coeff = " + string(_dmg_coeff) + "\n"
		_dmg_coeff *= (_table_entry[2] == _elem_action[_ae]) ? 2 : 1
			_info += elemental_text[_elem_action[_ae]] + " -> " + elemental_text[_p_base_elem[_pe]] + ". "
			_info += "Coeff = " + string(_dmg_coeff) + "\n"
		_dmg[_pe, _ae] = _dmg[_pe, _ae] * _dmg_coeff
	}
}

var potential_damage = 0
var result = 0
for (var _pe = 0; _pe < 2; _pe++) 
for (var _ae = 0; _ae < 2; _ae++) 
	potential_damage += _dmg[_pe, _ae]
potential_damage *= 0.5
result = potential_damage // previously

// apply state x2,x3,x4
var _mlt = 1
var _mlt_rate = 0
var _r_ = 0
var _abil = _action[? "active"]
var	_d_rate = 0
if not is_undefined(_abil)
if ds_exists(_abil, ds_type_map) {
	_mlt = _abil[? "multiply"]
	_mlt_rate = 25 * (_abil[? "multiply_rate"] +1)
	
	switch _mlt {
		case 1: break;
		case 2: {
			_r_ = random_range(1,100)
			if _r_ <= _mlt_rate
				potential_damage *= 2
			break;
		}
		case 3:{
			_d_rate = (100 - _mlt_rate) / 2
			_r_ = random_range(1,100)
			if _r_ <= (_mlt_rate + _d_rate) {
				potential_damage *= 2
				_r_ = random_range(1,100)
				if _r_ <= _mlt_rate
					potential_damage += result
			}
			break;
		}
		case 4: {
			_d_rate = (100 - _mlt_rate) / 3
			_r_ = random_range(1,100)
			if _r_ <= (_mlt_rate + _d_rate * 2) {
				potential_damage *= 2
				_r_ = random_range(1,100)
				if _r_ <= (_mlt_rate + _d_rate) {
					potential_damage += result
					_r_ = random_range(1,100)
					if _r_ <= _mlt_rate
						potential_damage += result
				}
			}
			break;
		}
	}
}
//-----------------------------------------------------

result = potential_damage
show_debug_message(_info + "\n" + string(result))

return result
