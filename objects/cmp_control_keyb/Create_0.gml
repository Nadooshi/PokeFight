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

