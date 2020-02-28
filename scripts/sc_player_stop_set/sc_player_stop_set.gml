
if object_index = ob_player_flying {
	moveSpeed = 0
	frameSpeed = 0.1
	
	frame = (frame + frameSpeed) mod 2
} else {
	moveSpeed = 0
	frameSpeed = 0
	frame = 0
}
doMove = false


image_index = dirframe[dir] + floor(frame)
