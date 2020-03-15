/// @desc 

if not instance_exists(pokemon_id) exit;

var _trainer = pokemon_id.trainer
var _d = 0

ds_list_clear(last_damaged)

var _action = action
var _damage_area = id
var _ok = true

with ob_player 
if trainer != _trainer {
	_d = distance_to_point(other.x, other.y)
	if _d < other.radius 
	if (_action[? "tgTo"] & position_stage) != 0 {
		ds_list_add(other.last_damaged, id)
		if _action[? "delay"] = 0 {
			if hurt_timeout <= 0 {                     // refactor! hurt_time should be set in sc_deal_damage
				hurt_timeout = other.hurt_time
				sc_deal_damage(_action)
			}
		} else {
			_ok = true
			var i = 0
			while not is_undefined(delayed_bullet[| i]) {
				if instance_exists(delayed_bullet[| i]) {
					if delayed_bullet[| i].action[? "name"] = _action[? "name"] {
						_ok = false
						break
					}
					i++
				} else {
					ds_list_delete(delayed_bullet, i)
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
	}
}

if timeout>0 {
	timeout--
	if timeout<=0 
		instance_destroy()
}

