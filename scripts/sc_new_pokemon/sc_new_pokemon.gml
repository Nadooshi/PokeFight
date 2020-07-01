/// @arg pokemon_ds_map

var _ds = argument0

if ds_exists(_ds, ds_type_map) {
	_ds[? "face"] = 0 // main icon
	_ds[? "elemental_type"] = _ELEMENTAL.white // стихия
	_ds[? "material_type"] = _MATERIAL.flesh // тело
	_ds[? "title"] = ""
	_ds[? "evolution"] = ""
	_ds[? "health"] = 0
	_ds[? "ap"] = 0       // move speed
	_ds[? "size"] = _SIZE.normal
	_ds[? "flyable"] = 0   // 0/1
	_ds[? "digable"] = 0   // 0/1
	_ds[? "passive_1"] = ""  // ability name
	_ds[? "passive_2"] = ""  // ability name
	if not is_undefined(_ds[? "actions"])
	if ds_exists(_ds[? "actions"], ds_type_map)
		ds_map_destroy(_ds[? "actions"])
	_ds[? "actions"] = ds_map_create()  // action names
	_ds[? "position_stage"] = 1 // start position (underground, ground, fly)
	_ds[? "maxlevel"] = 100
	
	_ds[? "exp"] = 0
	_ds[? "level"] = 1 // 1 lvl in start
	_ds[? "loses"] = 0
	_ds[? "wins"] = 0
	_ds[? "artefact"] = noone
	_ds[? "berry"] = noone
	_ds[? "potion"] = noone
	if not is_undefined(_ds[? "active_actions"])
	if ds_exists(_ds[? "active_actions"], ds_type_list)
		ds_list_destroy(_ds[? "active_actions"])
	_ds[? "active_actions"] = ds_list_create()
}
