/// @desc 

if not selected
	exit

if not canMove
	exit

for (var i=0; i<k._count; i++) 
switch (keyCodes[i, 1]) {
	case 0:
		keys[i] = keyboard_check(keyCodes[i, 0])
		break
	case 1:
		keys[i] = mouse_check_button(keyCodes[i, 0])
		break
}


var newangle = 0
var dcount = 0
if keys[k.Left ] { newangle += dirangle[d.Left ]; dcount++ }
if keys[k.Right] { newangle += dirangle[d.Right]; dcount++; if keys[k.Down] newangle += 360 }
if keys[k.Up   ] { newangle += dirangle[d.Up   ]; dcount++ }
if keys[k.Down ] { newangle += dirangle[d.Down ]; dcount++ }
if dcount>0	newangle = newangle / dcount

// detect changes in control direction
if not doMove {
	if dcount > 0	{
		direction = newangle
		tgAngle = direction
		scBehaviour = sc_player_move_set
	}
} else {
	if dcount > 0
		tgAngle = newangle
	else
		scBehaviour = sc_player_stop_set
}
doMove = (dcount > 0)

// do attacks
var ok = false
for (i=0; i<6; i++)
if keys[i+k.action1] {
	ok = true
	if doActionNum = 0 {
		var _a_map = action_list[| i]
		if not is_undefined(_a_map) {
			doActionNum = i
			scBehaviour = sc_player_attack_set
			tgX = mouse_x
			tgY = mouse_y
			ok = true
			break
		}
	}
}
if not ok
	doActionNum = 0
