/// @desc Init

init = true

if size = _SIZE.immobile
	coll_area.sprite_index = sprite_index
else {
	coll_area.sprite_index = sp_shadowworld
	coll_area.image_index = size
}

