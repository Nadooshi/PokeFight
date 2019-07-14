/// @desc

event_inherited();

var _act_list = current_trainer[? "active_pokemon_list"]
var _cgt_list = current_trainer[? "caught_pokemon_list"]
if not is_undefined(_act_list[| index]) {
	var _pokemon = _cgt_list[| _act_list[| index]]
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(sp_slot_fireball, ob_slot_fireball.image_index, x, y+12, 2, 2, 0, c_white, 0.5)
	gpu_set_blendmode(bm_normal)
	draw_sprite_ext(sp_slot_icon, _pokemon[? "face"], x, y, 4, 4, 0, c_white, 1)
}

