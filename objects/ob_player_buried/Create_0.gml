/// @desc

// reload sprite
var _sp = asset_get_index("sp_pokeworld_" + string(pokemon_map[? "face"]))
if sprite_exists(_sp)
	sprite_index = _sp

sc_player_stop_set()

o_maxSpeed = maxSpeed
maxSpeed = 0.66
position_stage = _ATTACK_TG.underground
