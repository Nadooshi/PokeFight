/// @arg damage

// for ob_pokemon

var _dmg = argument0;

shield -= _dmg
_dmg = 0

if shield < 0 {
	_dmg = shield *-1
	shield = 0
}