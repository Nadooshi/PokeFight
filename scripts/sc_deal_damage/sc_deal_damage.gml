/// @arg action
/// for damaged pokemon

var _action = argument0
var _dmg = sc_calculate_damage(_action, pokemon_map)

with other
	chain_dmg_target = sc_chain_damage()

health_cur = max(0, health_cur - _dmg)
hurt_cur += _dmg
if health_cur = 0 
	event_perform(ev_destroy, 0)
