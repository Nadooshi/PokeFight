/// @desc 

draw_set_alpha(0.5)
draw_circle_color(x, y, radius, c_red, c_red, false)
draw_set_alpha(1)

if sprite_exists(sprite_index) {
	draw_self()
}


