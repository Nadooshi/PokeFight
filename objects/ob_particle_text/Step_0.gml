/// @desc

alpha += d_alpha
if alpha <= 0
	instance_destroy()
else 
	image_alpha = sqrt(alpha)

vspeed *= 0.85
