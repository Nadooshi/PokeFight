/// @desc

var _maxcount = ceil((room_width - 64 - 96) / 96)
var _rowscount = floor(pokemon_list_count / _maxcount) + 1
var _sz = 128

var _count = 0
var _name = ds_map_find_first(pokemon_list)
var i = 0
var k = 0
for (i=0; i<_rowscount; i++)
for (k=0; k<_maxcount; k++) {
	if is_undefined(_name)
		break
	if _count >= pokemon_list_count
		break
	sc_add_slot_caught_pokemon(k*_sz+32+48+1920, i*_sz+96+48, _name)
	_name = ds_map_find_next(pokemon_list, _name)
	_count++
}

// set pictures for icons
var _temp = ds_map_create() // temporary pokemon
with ob_slot_icon {
	sc_load_pokemon(name, _temp)
	if not ( is_undefined(_temp[? "face"]) or (_temp[? "face"]="") )
		image_index = _temp[? "face"]
}
ds_map_destroy(_temp)


room_height = max(1080, _sz * _rowscount + 96+112)


sc_refresh_ui()
