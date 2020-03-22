/// @desc 

//if not instance_exists(pokemon_id) exit;

var _d = 0

ds_list_clear(last_damaged)

var _action = action
var _damage_area = id
var _ok = true

if sc_does_exist(accuracy_done_for)
	ds_list_add(last_damaged, accuracy_done_for)

with ob_player
if id != other.accuracy_done_for {
	_d = distance_to_point(other.x, other.y)
	if _d < other.radius {
		if hurt_timeout <= 0
		if (_action[? "tgTo"] & position_stage) != 0 
		if sc_check_affect(other.pokemon_id, id, _action) 
		if sc_check_accuracy(other.id, id, _action) 
			ds_list_add(other.last_damaged, id)
	}
}

// do damage
for (var i=0; i<ds_list_size(last_damaged); i++) 
with last_damaged[| i]
if _action[? "delay"] = 0 {
	if hurt_timeout <= 0 {
		hurt_timeout = other.hurt_time
		sc_deal_damage(_action)
	}
} else {   // do delayed damage
	_ok = true
	var k = 0
	while not is_undefined(delayed_bullet[| k]) {
		if instance_exists(delayed_bullet[| k]) {
			if delayed_bullet[| k].action[? "name"] = _action[? "name"] {
				_ok = false
				break
			}
			k++
		} else {
			ds_list_delete(delayed_bullet, k)
			continue
		}
	}
	if _ok {
		var _bullet = instance_create_layer(x, y, "Game", ob_bullet_delayed)
		with _bullet {
			pokemon_id_damaged = other.id
			pokemon_id_attack = _damage_area.pokemon_id
			ds_map_copy(action, _action)
			timeout = action[? "delay"]
			hurt_time = _damage_area.hurt_time
			image_blend  = _damage_area.image_blend
		}
		ds_list_add(delayed_bullet, _bullet)
	}
}


if timeout>0 {
	timeout--
	if timeout<=0 
		instance_destroy()
}

