
timeout--

phi = pi * (1 - timeout/init_timeout)
_z = 12 + sin(phi) * z_max
other.x = x 
other.y = y - _z


// attack end
if timeout<=0 {
	canMove = true
	scBehaviour = sc_player_stop_set
	x = oX
	y = oY
}
