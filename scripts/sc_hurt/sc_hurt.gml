/// @arg damage

// for ob_pokemon

var _dmg = argument0;

health_cur = max(0, health_cur - _dmg)
hurt_cur += _dmg

// death
if health_cur = 0 
	event_perform(ev_destroy, 0)
	
