/// @desc

event_inherited();
/*
var _pokemon = ds_list_find_value(current_trainer[? "active_pokemon_list"], index)
if not is_undefined(_pokemon) {
	var _fr = ob_slot_fireball.image_index;
	gpu_set_blendmode(bm_add)
	draw_sprite_ext(sp_slot_fireball, _fr  , x, y+12, 2, 2, 0, c_white, (1-frac(_fr))*0.5)
	draw_sprite_ext(sp_slot_fireball, _fr+1, x, y+12, 2, 2, 0, c_white,    frac(_fr) *0.5)
	gpu_set_blendmode(bm_normal)
}
*/
