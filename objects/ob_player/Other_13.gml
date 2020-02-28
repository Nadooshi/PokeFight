/// @desc Attack

var _a_map = action_list[| doActionNum]
if _a_map[? "ap"] > power_cur
	doActionNum = -1
else {
	power_cur -= _a_map[? "ap"]
	attack_warmup = _a_map[? "warmup"] + 0.001
}

