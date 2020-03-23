/// @desc
if bbox_left > (view_xport[0] + 1280) or bbox_top > (view_yport[0] + 720)
	or bbox_right < (view_xport[0] - 640) or bbox_bottom < (view_yport[0] - 360) {
	instance_destroy()
}
	
