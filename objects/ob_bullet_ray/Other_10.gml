/// @desc Init


length = action[? "range"] * 18
x1 = x
y1 = y
x2 = x1 + lengthdir_x(length, direction)
y2 = y1 + lengthdir_y(length, direction)

event_inherited();
