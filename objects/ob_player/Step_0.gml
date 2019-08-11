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

// turn
if doMove {
	var aDiff = angle_difference(tgAngle, direction)
	if (abs(aDiff) < dAngle)
		direction = tgAngle
	else
		direction += (dAngle * sign(aDiff))
}

// animation
if abs(angle_difference(direction, dirangle[d.Left ])) <= 60
	dir = d.Left
if abs(angle_difference(direction, dirangle[d.Right])) <= 60
	dir = d.Right
if abs(angle_difference(direction, dirangle[d.Up   ])) <= 30
	dir = d.Up
if abs(angle_difference(direction, dirangle[d.Down ])) <= 30
	dir = d.Down

frame = (frame + frameSpeed) mod 2
image_index = dirframe[dir] + floor(frame)
