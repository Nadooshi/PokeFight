/// @desc 

if not selected
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

if not doMove {
	if dcount > 0	{
		direction = newangle
		tgAngle = direction
	}
} else {
	if dcount > 0
		tgAngle = newangle
}

doMove = (dcount > 0)

