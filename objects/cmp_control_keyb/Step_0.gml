/// @desc 

if not selected
	exit
	
for (var i=0; i<k.count; i++)
	keys[i] = keyboard_check(keyCodes[i])


if keys[k.Left] {
	if not doMove
		direction = d.Left
} else
if keys[k.Right] {
	if not doMove
		direction = d.Right
} else
if keys[k.Down] {
	if not doMove
		direction = d.Down
} else
if keys[k.Up] {
	if not doMove
		direction = d.Up
}

doMove = (keys[k.Left] or keys[k.Right] or keys[k.Up] or keys[k.Down])
