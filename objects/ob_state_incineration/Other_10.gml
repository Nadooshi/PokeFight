/// @desc 

// Inherit the parent event
event_inherited();

alarm[0] = period;
action[? "dmg_element" ] *= 0.25;
action[? "dmg_material"] *= 0.25;
action[? "bullet_phys"] = _BULLET_PH.custom;

damage = ds_map_find_value(action[? "active"], "state_value");


