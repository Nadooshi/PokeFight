/// @desc 

if show_hint
if hint != "" {
	draw_set_font(fn_card)
	draw_set_color(c_black)
	draw_text(mouse_x + 16, mouse_y + 16, hint)
	draw_set_color(c_white)
	draw_text(mouse_x + 14, mouse_y + 14, hint)
}
