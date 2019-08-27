/// @desc Init globals
#region Elemental

enum _ELEMENTAL {
	white,
	dark,
	flame,
	water,
	ground,
	psy,
	poison,
	electric,
	wind,
	lunar,
	solar,
	flesh, 
	ghost,
	plant,
	steel,
	rock,	
	furry,   // пушистый	
	mystic,
	ancient, // древний
	shielded,  // панцирный
	marine,  // водоплавающий
	bird,
	cosmic,
	spike,
	frozen,
	insect,
	dragon,
	robotic,
	muddy,
	woody,
	none,
	count    // чтобы узнать количество значений
}

globalvar elemental_text
var i=0
elemental_text[i++] = "white"
elemental_text[i++] = "dark"
elemental_text[i++] = "flame"
elemental_text[i++] = "water"
elemental_text[i++] = "ground"
elemental_text[i++] = "psy"
elemental_text[i++] = "poison"
elemental_text[i++] = "electric"
elemental_text[i++] = "wind"
elemental_text[i++] = "lunar"
elemental_text[i++] = "solar"
elemental_text[i++] = "flesh" 
elemental_text[i++] = "ghost"
elemental_text[i++] = "plant"
elemental_text[i++] = "steel"
elemental_text[i++] = "rock"
elemental_text[i++] = "furry"	// пушистый	
elemental_text[i++] = "mystic"
elemental_text[i++] = "ancient"	// древний
elemental_text[i++] = "shielded"	// панцирный
elemental_text[i++] = "marine"	// водоплавающий
elemental_text[i++] = "bird"
elemental_text[i++] = "cosmic"
elemental_text[i++] = "spike"
elemental_text[i++] = "frozen"
elemental_text[i++] = "insect"
elemental_text[i++] = "dragon"
elemental_text[i++] = "robotic"
elemental_text[i++] = "muddy"
elemental_text[i++] = "woody"
elemental_text[i++] = "none"

#endregion

//////////////////////////////////

#region Material
enum _MATERIAL {
	white,
	dark,
	flame,
	water,
	ground,
	psy,
	poison,
	electric,
	wind,
	lunar,
	solar,
	flesh, 
	ghost,
	plant,
	steel,
	rock,	
	furry,   // пушистый	
	mystic,
	ancient, // древний
	shielded,  // панцирный
	marine,  // водоплавающий
	bird,
	cosmic,
	spike,
	frozen,
	insect,
	dragon,
	robotic,
	muddy,
	woody,
	none,
	count    // чтобы узнать количество значений
}

globalvar material_text
var i=0
material_text[i++] = "white"
material_text[i++] = "dark"
material_text[i++] = "flame"
material_text[i++] = "water"
material_text[i++] = "ground"
material_text[i++] = "psy"
material_text[i++] = "poison"
material_text[i++] = "electric"
material_text[i++] = "wind"
material_text[i++] = "lunar"
material_text[i++] = "solar"
material_text[i++] = "flesh" 
material_text[i++] = "ghost"
material_text[i++] = "plant"
material_text[i++] = "steel"
material_text[i++] = "rock"
material_text[i++] = "furry"	// пушистый	
material_text[i++] = "mystic"
material_text[i++] = "ancient"	// древний
material_text[i++] = "shielded"	// панцирный
material_text[i++] = "marine"	// водоплавающий
material_text[i++] = "bird"
material_text[i++] = "cosmic"
material_text[i++] = "spike"
material_text[i++] = "frozen"
material_text[i++] = "insect"
material_text[i++] = "dragon"
material_text[i++] = "robotic"
material_text[i++] = "muddy"
material_text[i++] = "woody"
material_text[i++] = "none"

#endregion

//////////////////////////////////

#region Attack setup

enum _ATTACK_TYPE {
	melee,
	range,
	aura,
	front,
	lunge,     // выпад
	mortar,    // ballistic traectory
	pool,
	cloud
}
globalvar attack_type_text
var i=0
attack_type_text[i++] = "melee"
attack_type_text[i++] = "range"
attack_type_text[i++] = "aura"
attack_type_text[i++] = "front"
attack_type_text[i++] = "lunge"
attack_type_text[i++] = "mortar"
attack_type_text[i++] = "pool"
attack_type_text[i++] = "cloud"

enum _ATTACK_AFFECT {
	friend = 1,
	enemy  = 2,
	itself = 4
}
globalvar attack_affect_text
var i=0
attack_affect_text[i++] = "friend"
attack_affect_text[i++] = "enemy"
attack_affect_text[i++] = "itself"

enum _ATTACK_TG {
	air			= 1,
	ground		= 2,
	underground = 4
}
globalvar attack_target_text
var i=0
attack_target_text[_ATTACK_TG.air	 	]  = "air"
attack_target_text[_ATTACK_TG.ground	]  = "ground"
attack_target_text[_ATTACK_TG.underground] = "underground"

#endregion

//////////////////////////////////
enum _SIZE {
	tiny,
	normal,
	big,
	giant
}
globalvar size_text var;
size_text[_SIZE.tiny	] = "tiny"
size_text[_SIZE.normal	] = "normal"
size_text[_SIZE.big		] = "big"
size_text[_SIZE.giant	] = "giant"

//////////////////////////////////


globalvar trainer_inv_size; trainer_inv_size = 16;

globalvar popup_appeared; popup_appeared = false

//////////////////////////////////
randomize()
globalvar trainer_preset; trainer_preset = sc_new_trainer()
trainer_preset[? "name"]	= "New trainer"
trainer_preset[? "avatar"]	= irandom(sprite_get_number(sp_trainer_avatar))   // image_index from sp_trainer_avatar

globalvar current_trainer;	current_trainer = ds_map_create()

globalvar trainer_fnames;	trainer_fnames = [] 
globalvar trainer_count;	trainer_count = 0


if not directory_exists("trainer_saves")
	directory_create("trainer_saves")

var fn = file_find_first("trainer_saves/*.ini",0)
while fn<>"" {
	trainer_fnames[trainer_count] = fn;
	trainer_count++
	fn = file_find_next()
}
file_find_close()


globalvar pokemon_path;		pokemon_path = "pokedex.ini"
globalvar pokemon_list;		pokemon_list = ds_map_create()
globalvar pokemon_list_count

ini_open(pokemon_path)
	ds_map_read(pokemon_list, ini_read_string("pokemons", "pokemon_list", ""))
	pokemon_list_count = ds_map_size(pokemon_list)
ini_close()

globalvar current_pokemon;	current_pokemon = ds_map_create()

//////////////////////////////////
// saved slots

globalvar action_slot;
globalvar trainer_slot; 

