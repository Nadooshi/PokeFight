/// @desc 

enum k {
	Left,
	Right,
	Up,
	Down,
	count = 4
}

keys = [k.count]

keyCodes[k.Left ] = ord("A")
keyCodes[k.Right] = ord("D")
keyCodes[k.Up	] = ord("W")
keyCodes[k.Down ] = ord("S")

dirangle[d.Left ] = 180
dirangle[d.Right] = 0
dirangle[d.Up   ] = 90
dirangle[d.Down ] = 270
