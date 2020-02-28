/// @desc 

enum k {
	Left,
	Right,
	Up,
	Down,
	action1,
	action2,
	action3,
	action4,
	action5,
	action6,
	Bury,
	Fly,
	_count,
}

keys[k._count] = false
keys_before[k._count] = false

keyCodes[k.Left , 0] = ord("A");	keyCodes[k.Left , 1] = 0
keyCodes[k.Right, 0] = ord("D");	keyCodes[k.Right, 1] = 0
keyCodes[k.Up   , 0] = ord("W");	keyCodes[k.Up,    1] = 0
keyCodes[k.Down , 0] = ord("S");	keyCodes[k.Down , 1] = 0
keyCodes[k.action1, 0] = mb_left;	keyCodes[k.action1, 1] = 1
keyCodes[k.action2, 0] = mb_right;	keyCodes[k.action2, 1] = 1
keyCodes[k.action3, 0] = ord("Q");	keyCodes[k.action3, 1] = 0
keyCodes[k.action4, 0] = ord("E");	keyCodes[k.action4, 1] = 0
keyCodes[k.action5, 0] = ord("R");	keyCodes[k.action5, 1] = 0
keyCodes[k.action6, 0] = ord("F");	keyCodes[k.action6, 1] = 0
keyCodes[k.Bury,  0] = ord("C");	keyCodes[k.Bury,  1] = 0
keyCodes[k.Fly,   0] = ord("Z");	keyCodes[k.Fly,   1] = 0


dirangle[d.Left ] = 180
dirangle[d.Right] = 0
dirangle[d.Up   ] = 90
dirangle[d.Down ] = 270
