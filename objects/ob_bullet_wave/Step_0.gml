/// @desc

event_perform_object(ob_composed, ev_step, ev_step_normal)

if not init 
	event_perform(ev_other, ev_user0)

size += d_size
image_xscale = size * 1.5
image_yscale = size * 1.5


if action[? "bullet_phys"] != _BULLET_PH.piercer {
	var _angle = degtorad(direction)
	var _step = size * 12 * 1.5 / (dot_count - 1)
	var _h_count = -floor(dot_count * 0.5)
	var _collided = false
	for (var i=0; i<dot_count; i++) {
		if instance_exists(dot[i]) {
			dot[i].x = x + sin(_angle) * _step * (_h_count + i)
			dot[i].y = y + cos(_angle) * _step * (_h_count + i)
			dot[i].timeout = timeout
			dot[i].radius = _step * 0.4
		} else {
			_collided = true
			break
		}
	}
	if _collided
		event_perform(ev_other, ev_user1) // split wave
} else {
//  pierced
//	show_message("Pierced") 
}

timeout--
if timeout<=0 {
	instance_destroy()
}
