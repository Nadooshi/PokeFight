/// @desc 

event_perform_object(ob_composed, ev_step, ev_step_normal)

radius += d_radius
angle  += d_angle

x = x1 + lengthdir_x(radius, angle)
y = y1 + lengthdir_y(radius, angle)

image_xscale = 0.25 + 1.25 * (radius / max_radius)
image_yscale = image_xscale
image_angle = angle

if radius >= max_radius 
	instance_destroy()
