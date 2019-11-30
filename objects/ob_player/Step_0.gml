/// @desc 
event_inherited()

if script_exists(scBehaviour)
	script_execute(scBehaviour)
else
	sc_player_stop_set()

if hurt_timeout > 0
	hurt_timeout -= dTime	
