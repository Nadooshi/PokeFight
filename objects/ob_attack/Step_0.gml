/// @desc 

if not init
	event_perform(ev_other, ev_user0)

event_inherited()

if anim_ended {
	pokemon_id.canMove = true
	instance_destroy()
}
