/// @desc

gpu_set_blendmode(bm_add)
draw_sprite_ext(sp_slot_fireball, image_index  , x, y+12, 2, 2, 0, c_white, (1-frac(image_index))*image_alpha)
draw_sprite_ext(sp_slot_fireball, image_index+1, x, y+12, 2, 2, 0, c_white, (  frac(image_index))*image_alpha)
gpu_set_blendmode(bm_normal)
