/// @desc Process scroll

camY += dScroll
dScroll *= 0.9

if camY < 0 {
	camY = 0
	dScroll = 0
}
if camY > room_height - view_hport[view_index] {
	camY = room_height - view_hport[view_index]
	dScroll = 0
}

camera_set_view_pos(view_camera[view_index], camX, camY)

