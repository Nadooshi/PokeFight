/// @desc Attack

var _a_map = action_list[| doActionNum]
if (_a_map[? "tgFrom"] & _ATTACK_TG.underground) = 0
	event_perform(ev_other, ev_user2)
	
// Inherit the parent event
event_inherited();

