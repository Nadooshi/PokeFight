/// @desc Draw exp bar with frame
if enabled {
	draw_sprite_ext(sprFrame, 0, xFrame, yFrame, frameXScale, 1, 0, c_white, image_alpha)
	draw_sprite_ext(sprFrame, 1, xFrame + wFrame, yFrame, 1, 1, 0, c_white, image_alpha)

	draw_sprite_ext(sprExpbar, 0, xFrame, yFrame + 7, expXScale * expFillPercent, 1, 0, c_white, image_alpha)
	draw_self()
//--------------------------------------	
	draw_set_font(fn_card)
	
	_w = string_width(caption)
	_h = string_height(caption)
	draw_set_color(c_black)
	draw_text(x + (sprite_width-_w) div 2 - 2, y + (sprite_height-_h) div 2 + 2, caption)
	//draw_set_color(c_white)
	draw_set_color(image_blend)
	draw_text(x + (sprite_width-_w) div 2, y + (sprite_height-_h) div 2, caption)

}