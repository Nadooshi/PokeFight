/// @desc
switch phase {
case 0: {
	alpha += d_alpha
	if alpha >= 1 
	    phase = 1
	else 
		image_alpha = sqrt(alpha)
	break
}
case 1: {
	alpha *= 0.8
	if alpha<=0.1
		instance_destroy()
}

}
vspeed *= 0.9
