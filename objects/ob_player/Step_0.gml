/// @desc 
event_inherited()

if doMove {
	moveSpeed = pokemon_map[? "ap"] * 0.25
	frameSpeed = moveSpeed * 0.1
} else {
	moveSpeed = 0
	frameSpeed = 0
	frame = 0
}

if abs(angle_difference(direction, d.Left )) < 45
	dir = d.Left
if abs(angle_difference(direction, d.Right)) < 45
	dir = d.Right
if abs(angle_difference(direction, d.Up	  )) < 45
	dir = d.Up
if abs(angle_difference(direction, d.Down )) < 45
	dir = d.Down

frame = (frame + frameSpeed) mod 2
image_index = dirframe[dir] + floor(frame)
