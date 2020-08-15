/// @desc

// Inherit the parent event
event_inherited();
if not sc_does_exist(map) or not sc_does_exist(current_pokemon) {
	hint = ""
	exit
}
	
hint = "\nDamage = " + string(map[? "damage"]) +
       "\ndmg_element  = " + string(map[? "dmg_element" ]) +
       "\ndmg_material = " + string(map[? "dmg_material"])


