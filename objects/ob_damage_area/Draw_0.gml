/// @desc 

draw_set_alpha(0.65)
draw_circle_color(x, y, radius, c_red, c_red, true)
draw_set_alpha(1)

if sprite_exists(sprite_index) {
	draw_self()
}


