/// @desc

// Inherit the parent event
event_inherited();

with pokemon_id {
	damage_mod = 1
	speed_mod = 0
	moveSpeed = max(0.25, maxSpeed)
	dodge_mod = 0
	accuracy_mod = 0
	power_reg = 0.3
}
