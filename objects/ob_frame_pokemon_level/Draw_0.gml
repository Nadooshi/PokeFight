/// @desc

// Inherit the parent event
//event_inherited();


if i > array_length_1d(color_pal) - 1
	i = 0
if bal = 1 {
	bal = 0
	col1 = col2
	col2 = color_pal[i]
	i++
}

draw_sprite_ext(sp_beautyButton1, 0, x, y, image_xscale, image_yscale, 0, merge_color(col1, col2, bal), 1)
draw_self()
//image_blend = merge_color(col1, col2, bal)
bal += 0.01

