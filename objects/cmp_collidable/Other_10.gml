/// @desc Init

init = true

if size = _SIZE.immobile {
	coll_area.sprite_index = sprite_index
	coll_area.image_xscale = image_xscale
	coll_area.image_yscale = image_yscale
} else {
	coll_area.sprite_index = sp_shadowworld
	coll_area.image_index = size
}

