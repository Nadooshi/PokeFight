/// @desc

event_perform_object(object_get_parent(object_get_parent(object_index)), ev_step, ev_step_normal)

if not init {
	init = true
	
	for (var i=0; i<dot_count; i++) {
		dot[i] = instance_create_layer(x, y, "Particles", ob_damage_area)
		with dot[i] {
			action = other.action
			pokemon_id = other.pokemon_id
			hurt_time = other.hurt_time
		}		
	}
	
}

size += d_size
image_xscale = size * 1.5
image_yscale = size * 1.5

var _angle = degtorad(direction)
var _step = size * 12 * 1.5 / (dot_count - 1)
var _h_count = -floor(dot_count * 0.5)
var _collided = false
for (var i=0; i<dot_count; i++)
if instance_exists(dot[i]) {
	dot[i].x = x + sin(_angle) * _step * (_h_count + i)
	dot[i].y = y + cos(_angle) * _step * (_h_count + i)
	dot[i].timeout = timeout
	dot[i].radius = _step * 0.5
	if ds_list_size(dot[i].last_damaged) > 0 {
		instance_destroy(dot[i])
		_collided = true
	}
}

if _collided
	event_perform(ev_other, ev_user0)

timeout--
if timeout<=0 {
	instance_destroy()
}
