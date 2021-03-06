/// @desc 

var result = ds_map_create()

result[? "name"			] = ""
result[? "type"			] = _ATTACK_TYPE.melee
result[? "bullet_phys"	] = _BULLET_PH.custom
result[? "affect"		] = _ATTACK_AFFECT.enemy  // combination of _ATTACK_AFFECT
result[? "range"		] =	0
result[? "level"		] =	0
result[? "exp"			] = 0
result[? "act_force"	] =	4
result[? "radius"		] = 0
result[? "warmup"		] = 0
result[? "delay"		] =	0
result[? "accuracy"		] = 0.0
result[? "ap"			] = 0
result[? "damage"		] = 0
result[? "dmg_element"	] = 0
result[? "dmg_material"	] = 0
result[? "element"		] = _ELEMENTAL.white
result[? "material"		] = _MATERIAL.white
result[? "repeatable"	] = true
result[? "tgFrom"		] = _ATTACK_TG.ground   // combination of _ATTACK_TG 
result[? "tgTo"			] = _ATTACK_TG.ground   // combination of _ATTACK_TG 
result[? "anim"			] = ""    // name of sprite asset ("sp_..")
result[? "p_anim"		] = ""    // name of sprite asset ("sp_..")
result[? "ex_anim"		] = ""    // name of sprite asset ("sp_..")

result[? "active"		] = ""    // map of ability

return result
