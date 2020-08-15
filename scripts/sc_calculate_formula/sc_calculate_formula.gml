/// @arg mode
/// @arg force
/// @arg level
/// @arg power
/// @arg damage
/// @arg action_level

var mode  = argument[0]
var force = 0
if argument_count>1
	force = argument[1]
var lvl = 0
if argument_count>2
	lvl = argument[2]
var pow  = 0
if argument_count>3
	pow = argument[3]
var dmg = 0
if argument_count > 4
	 dmg = argument[4]
var act_lvl = 0
if argument_count > 5
	 act_lvl = argument[5]
	 
var _lvl = lvl-act_lvl // level to upgrade

if _lvl < 0
	return dmg

switch (mode) {
case 0: break;
case 1:  // calculate health			
case 2:
	return custom._health * coef_force[force] + lvl * coef_level[force] * custom._health * coef_force[force]
case 3: // calculate damage
	return custom._dmg * coef_force[force] + (lvl * coef_level[force] * custom._dmg * coef_force[force] * 0.01 * pow)
case 4:
	return custom._dmg * coef_force[_FORCE.preferred] + (lvl * coef_level[_FORCE.preferred] * custom._dmg * coef_force[_FORCE.preferred] * 0.01 * pow)
case 5: // upgrade damage
	if dmg > 0
		return dmg + (_lvl * coef_level[force] * custom._dmg * coef_force[force] * 0.01 * pow)
}

return dmg
