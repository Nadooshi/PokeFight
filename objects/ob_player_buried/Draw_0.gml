/// @desc

// Inherit the parent event
//event_inherited();

draw_sprite(sp_holeworld, size, x, y + 12)
//if hurt_timeout > 0 {
//	draw_set_color(c_red)
//	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false)
//	draw_set_color(c_white)
//}

draw_sprite_part_ext(sprite_index, image_index, 0, 0,
	sprite_get_width(sprite_index), sprite_get_height(sprite_index) * 0.5,
	x - sprite_xoffset, y - sprite_yoffset + sprite_height * 0.5 - 2,
	image_xscale, image_yscale, image_blend, image_alpha
)

