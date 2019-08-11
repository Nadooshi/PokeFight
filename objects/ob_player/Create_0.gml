/// @desc
component_count = 0
component_list[component_count++] = cmp_selectable
component_list[component_count++] = cmp_moving
component_list[component_count++] = cmp_control_keyb

event_inherited()

enum d {
	Left,
	Right,
	Up,
	Down
}

dirangle[d.Left ] = 180
dirangle[d.Right] = 0
dirangle[d.Up   ] = 90
dirangle[d.Down ] = 270


pokemon_map = ds_map_create()
doMove = false

dirframe[d.Right] = 0
dirframe[d.Up   ] = 2
dirframe[d.Left ] = 4
dirframe[d.Down ] = 6

dir = d.Right

frame = 0
frameSpeed = 0
shadowFrame = 0

tgAngle = 0
dAngle = 2
