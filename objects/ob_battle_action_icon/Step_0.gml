/// @desc 

if instance_exists(selected_id) 
if selected_id.doActionNum = parent.index {
	var _action = selected_id.action_list[| selected_id.doActionNum]
	if sc_does_exist(_action) {	
		var _warm_max = _action[? "warmup"]+0.001
		warm_coeff = selected_id.attack_warmup / _warm_max
	}
} else
	warm_coeff = 0
