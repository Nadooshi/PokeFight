/// @desc 

// Inherit the parent event
event_inherited();

for (var i=0; i<tiles_count; i++)
	draw_tile(tileset, tile_get_index(tiles[i,0]), 0, tiles[i,1], tiles[i,2])
