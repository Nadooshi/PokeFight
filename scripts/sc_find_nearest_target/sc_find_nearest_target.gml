/// @arg attacking_pokemon
/// @arg attack_affect=enemy
/// @arg max_distance=999
/// @arg position
/// @arg exclude_list_or_id

var _att_p = argument[0]
if not sc_does_exist(_att_p) {
	show_debug_message("sc_find_nearest_target: no attacking pokemon")
	return noone
}
var _affect = _ATTACK_AFFECT.enemy
if argument_count>1
	_affect = argument[1]

var _d = 9999
if argument_count>2
	_d = argument[2]
var _position = _ATTACK_TG.ground | _ATTACK_TG.air | _ATTACK_TG.underground
if argument_count>3
	_position = argument[3]

var _exclude = ds_list_create()
var _excl_list_to_destroy = true
if argument_count>4 {
	var _list_id = argument[4]
	if ds_exists(_list_id, ds_type_list) {
		ds_list_destroy(_exclude)
		_excl_list_to_destroy = false
		_exclude = _list_id
	}
	else
	if instance_exists(_list_id) {
		ds_list_add(_exclude, _list_id)
		ds_list_add(_exclude, _att_p)
	}
	else {
		show_debug_message("sc_find_nearest_target: no exclude")
		return noone
	}
}

var _tmp = noone
var _result = noone
var _tmp_d = -1

for (var i = 0; i < instance_number(ob_player); i++) {
	_tmp = instance_find(ob_player, i)
//	if _tmp.id != _att_p.id
	if ds_list_find_index(_exclude, _tmp) = -1
	if _tmp.trainer != -1 {
		if (_position & _tmp.position_stage) != 0
		if sc_check_affect(_att_p, _tmp, _affect) {
			_tmp_d = distance_to_object(_tmp)
			if _tmp_d <_d {
				_result = _tmp
				_d = _tmp_d
			}
		}
	}
}


if _excl_list_to_destroy
	ds_list_destroy(_exclude)

return _result
