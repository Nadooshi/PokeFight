/// @desc 

// Inherit the parent event
event_inherited();

if not init {
	init = true
	event_perform(ev_other, ev_user0)
	with instance_create_layer(x, y, "Particles", ob_damage_area_pool) {
		action = other.action
		radius = (action[? "radius"] + 1) * 8
		pokemon_id = other.pokemon_id
		hurt_time = other.hurt_time
		timeout = other.timeout
		image_blend =  other.image_blend	
	}

}
	
//var _id = instance_position(x, y, ob_player)
//if instance_exists(_id) {
//	if pokemon_id.trainer != _id.trainer 
//		instance_destroy()
//}

timeout--
if timeout<=0 {
	instance_destroy()
}

