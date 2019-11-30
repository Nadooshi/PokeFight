/// @desc
event_inherited()

draw_sprite(sp_shadowworld, shadowFrame, x, y)
if hurt_timeout > 0 {
//	image_blend = c_red
//		draw_self()
//	image_blend = c_white
	draw_set_color(c_red)
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false)
	draw_set_color(c_white)
}

draw_self()

//if selected
//	draw_text_transformed(x+16, y-16, pokemon_map[? "title"] + ", " + string(pokemon_map[? "face"]), 0.2, 0.2, 0)
