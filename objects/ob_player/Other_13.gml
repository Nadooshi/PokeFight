/// @desc Attack

var _a_map = action_list[| doActionNum]

if is_undefined(_a_map) {
	doActionNum = -1
	exit
}
if not ds_exists(_a_map, ds_type_map) {
	doActionNum = -1
	exit
}

if (_a_map[? "tgFrom"] & position_stage) != 0 { 
	if _a_map[? "ap"] < power_cur {
		power_cur -= _a_map[? "ap"]
		attack_warmup = _a_map[? "warmup"] + 0.001
	} else 
		doActionNum = -1
} else
	doActionNum = -1
