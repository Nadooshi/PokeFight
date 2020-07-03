/// @desc

sc_composed_add_component(cmp_moving)
//sc_composed_add_component(cmp_control_keyb)
sc_composed_add_component(cmp_collidable_player)

event_inherited()

enum d {
	Right,
	Up,
	Left,
	Down
}

pokemon_map = ds_map_create()
action_list = ds_list_create()

doMove = false
doActionNum = -1
canMove = true

dirframe[d.Right] = 0
dirframe[d.Up   ] = 2
dirframe[d.Left ] = 4
dirframe[d.Down ] = 6

dir = d.Right

frame = 0
frameSpeed = 0


tgAngle = 0
dAngle = 0
tgX = 0
tgY = 0 
oX = 0
oY = 0
_z = 0

attack_ob_id = noone

scBehaviour = noone

selected = false
timeout = 0
hurt_timeout = 0  // timeout after taking damage (sec)

power_max = 100
power_cur = 100
power_reg = 0.3

health_cur = 0
health_max = 0
health_reg = 0.5
hurt_cur = 0
hurt_reg = 0.5

shield = 0 // for barrier state

attack_warmup = 0   // sec
damage_mod = 1 // умножение в sc_calculate_action_damage
range_damage_mod = 1 // превращается в damage_mod в sc_player_attack_set
melee_damage_mod = 1 // -----//------
speed_mod = 0 // прибавление в sc_player_move_set
accuracy_mod = 0 //прибавление в sc_check_accuracy
dodge_mod = 0 //прибавление в sc_check_accuracy

trainer = noone
position_stage = _ATTACK_TG.ground

delayed_bullet = ds_list_create()
states = ds_list_create()

target = ob_cursor
