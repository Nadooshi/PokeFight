/// @desc

fr_index = (fr_index + fr_speed) mod fr_count

gpu_set_blendmode(bm_add)
draw_sprite_ext(sp_slot_fireball, fr_index  , x, y+12, 2, 2, 0, c_white, (1-frac(fr_index))*0.5)
draw_sprite_ext(sp_slot_fireball, fr_index+1, x, y+12, 2, 2, 0, c_white,    frac(fr_index) *0.5)
gpu_set_blendmode(bm_normal)

event_inherited();

