/// @desc 

if not init {
	init = true

	start_frame = dirframe[pokemon_id.dir]
	stop_frame = start_frame + 4
	image_index = start_frame
	visible = true
}

if image_index >= (stop_frame-0.2)
	instance_destroy()

