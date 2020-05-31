/// @desc 

// Inherit the parent event
event_inherited();

sc_composed_remove_component(cmp_moving)
sc_composed_add_component(cmp_collidable_ray, true)
sc_composed_add_component(cmp_animated, true)

length = 0
x1:=0;
y1:=0;
x2:=0;
y2:=0;
