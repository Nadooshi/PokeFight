/// @desc 

event_inherited()
if not instance_exists(pokemon_id) 
	instance_destroy()

if anim_ended {
	pokemon_id.canMove = true
	instance_destroy()
}
