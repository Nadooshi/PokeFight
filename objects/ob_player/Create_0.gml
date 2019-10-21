/// @desc
component_count = 0
component_list[component_count++] = cmp_moving
component_list[component_count++] = cmp_control_keyb
component_list[component_count++] = cmp_selectable


event_inherited()

enum d {
	Left,
	Right,
	Up,
	Down
}

pokemon_map = ds_map_create()
action_list = ds_list_create()

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
dAngle = 0

