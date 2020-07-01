
if maxSpeed !=0 
	moveSpeed = max(0.25, maxSpeed + speed_mod)
 else
	moveSpeed = 0
	
frameSpeed = moveSpeed * 0.1

scBehaviour = sc_player_move
