/// @desc 

event_inherited()


with instance_create_depth(x, y, depth, ob_explosion) {
	sprite_index = other.sprite_index
	image_index  = other.image_index
	image_xscale = other.image_xscale
	image_yscale = other.image_yscale
	init_image_index = image_index
	init_sprite_index = sprite_index
}

for (var i=0; i<ds_list_size(states); i++)
if instance_exists(states[| i])
	instance_destroy(states[| i])

instance_deactivate_object(id)
