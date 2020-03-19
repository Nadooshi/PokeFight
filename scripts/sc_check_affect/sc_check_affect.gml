///@arg attacking_pokemon
///@arg damaged_pokemon
///@arg action

var _att_p = argument0
var _dmg_p = argument1
var _action = argument2

if (_action[? "affect"] & _ATTACK_AFFECT.enemy) = _ATTACK_AFFECT.enemy {
	if _att_p.trainer != _dmg_p.trainer
		return true	
}
if (_action[? "affect"] & _ATTACK_AFFECT.friend) = _ATTACK_AFFECT.friend {
	if (_att_p.trainer = _dmg_p.trainer) and (_att_p != _dmg_p)
		return true	
}
if (_action[? "affect"] & _ATTACK_AFFECT.itself) = _ATTACK_AFFECT.itself {
	if _att_p = _dmg_p
		return true	
}

return false
