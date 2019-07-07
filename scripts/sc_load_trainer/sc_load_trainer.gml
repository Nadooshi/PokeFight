
var _name = argument0
var _ds = argument1
if ds_exists(_ds, ds_type_map) 
if file_exists("trainer_saves/" + _name) {
	ini_open("trainer_saves/" + _name)
		ds_map_read(_ds, ini_read_string("trainer", "map", _ds))
	ini_close()
}

