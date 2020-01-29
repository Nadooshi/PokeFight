
timeout--

// little lunge
if timeout < 5 {
	x = oX + cos(degtorad(-direction)) * 6
	y = oY + sin(degtorad(-direction)) * 6
}


// attack end
if timeout<=0 {
	canMove = true
	scBehaviour = sc_player_stop_set
	x = oX
	y = oY
}
