/// @desc 

draw_set_alpha(0.15)
	draw_circle_color(x, y, radius, c_yellow, c_yellow, false)
draw_set_alpha(1)
	draw_circle_color(x, y, radius, c_red, c_red, true)

draw_set_color(c_maroon)
draw_line(x-10, y-10, x+10, y+10)
draw_line(x-10, y+10, x+10, y-10)
draw_set_alpha(1)
draw_set_color(c_white)

if sprite_exists(sprite_index) {
	draw_self()
}


