/// @desc 

// Inherit the parent event

component_count = 0
component_list[component_count++] = cmp_moving
component_list[component_count++] = cmp_animated

event_inherited();

action = noone
pokemon_id = 0
hurt_time = 0
timeout = 0
init_timeout = 0

init = false

moveSpeed = 3
image_xscale = 1.5
image_yscale = 1.5

_x = x
_y = y
_z = 0
phi = -45
