
timeout--
if timeout<=0 {
	canMove = true
	scBehaviour = sc_player_stop_set
	if instance_exists(attack_ob_id)
		instance_destroy(attack_ob_id)
}
	
