/// @desc 

counter++

if instance_exists(pokemon_id_damaged) {
	x = pokemon_id_damaged.x + _x
	y = pokemon_id_damaged.y + _y
}

if timeout > 0 {
	timeout -= dTime
	if timeout <=0 
		instance_destroy()
}

_sz = 3 + sin(counter*0.4)*1
