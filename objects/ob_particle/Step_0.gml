/// @desc

// Inherit the parent event
event_inherited();

alpha += d_alpha
if alpha <= 0
	instance_destroy()
else 
	image_alpha = sqrt(alpha)

if anim_ended
	instance_destroy()
