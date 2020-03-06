/// @desc

sc_composed_add_component(cmp_collidable_hazard)

event_inherited();

depth = (room_height - bbox_top) * 0.5
tiles = 0   // tiles array
tiles_count = 0
var tiles_id = layer_tilemap_get_id("Tiles_Debris")
tileset = tilemap_get_tileset(tiles_id)


var tile_w = tilemap_get_tile_width (tiles_id)
var tile_h = tilemap_get_tile_height(tiles_id)
var tiles_w_count = round((bbox_right -bbox_left) / tile_w) + 1
var tiles_h_count = round((bbox_bottom-bbox_top ) / tile_h) + 1

var _sx = bbox_left div tile_w * tile_w
var _sy = bbox_top  div tile_h * tile_h

var _data = 0;
for (var i=0; i<tiles_w_count; i++)
for (var j=0; j<tiles_h_count; j++) {
	var _x = _sx + tile_w*i
	var _y = _sy + tile_h*j
	if rectangle_in_rectangle(_x, _y, _x+tile_w, _y+tile_h, bbox_left, bbox_top, bbox_right, bbox_bottom)>0 {
		_data = tilemap_get_at_pixel(tiles_id, _x, _y)
		tiles[tiles_count, 0] = _data
		tiles[tiles_count, 1] = _x
		tiles[tiles_count, 2] = _y
		tilemap_set_at_pixel(tiles_id, tile_set_empty(_data), _x, _y)
		tiles_count++
	}
}

