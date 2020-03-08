/// @desc

// reload sprite
var _sp = asset_get_index("sp_pokeworld_" + string(pokemon_map[? "face"]))
if sprite_exists(_sp)
	sprite_index = _sp

_z = 16
o_maxSpeed = maxSpeed
maxSpeed *= 1.33
frameSpeed = 0.1

scBehaviour = sc_player_stop_set
position_stage = _ATTACK_TG.air
