/// @desc 

// Inherit the parent event
event_perform_object(ob_bullet, ev_create, 0)

sc_composed_remove_all_components(true)
sc_composed_add_component(cmp_collidable_ray, true)
sc_composed_add_component(cmp_animated, true)

event_inherited();

length = 0
x1:=0;
y1:=0;
x2:=0;
y2:=0;
damage_done:=false;
