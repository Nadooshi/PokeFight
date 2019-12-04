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

globalvar material_colour
var i=0

material_colour[i++] = make_colour_rgb(255,255,255)		//white
material_colour[i++] = make_colour_rgb(45,45,45)		//dark
material_colour[i++] = make_colour_rgb(255,110,10)		//flame
material_colour[i++] = make_colour_rgb(70,70,255)		//water
material_colour[i++] = make_colour_rgb(127,90,38)		//ground
material_colour[i++] = make_colour_rgb(255,100,100)		//psy
material_colour[i++] = make_colour_rgb(10,160,100)		//poison
material_colour[i++] = make_colour_rgb(255,255,0)		//electric
material_colour[i++] = make_colour_rgb(255,230,190)		//wind
material_colour[i++] = make_colour_rgb(196,200,255)		//lunar
material_colour[i++] = make_colour_rgb(255,255,150)		//solar
material_colour[i++] = make_colour_rgb(160,0,15)		//flesh
material_colour[i++] = make_colour_rgb(109,8,160)		//ghost
material_colour[i++] = make_colour_rgb(170,255,0)		//plant
material_colour[i++] = make_colour_rgb(255,246,204)		//steel
material_colour[i++] = make_colour_rgb(50,38,15)		//rock
material_colour[i++] = make_colour_rgb(127,120,102)		//furry
material_colour[i++] = make_colour_rgb(250,0,255)		//mystic
material_colour[i++] = make_colour_rgb(165,165,255)		//ancient
material_colour[i++] = make_colour_rgb(166,170,121)		//shielded
material_colour[i++] = make_colour_rgb(12,12,127)		//marine
material_colour[i++] = make_colour_rgb(127,100,100)		//bird
material_colour[i++] = make_colour_rgb(211,2,103)		//cosmic
material_colour[i++] = make_colour_rgb(97,217,229)		//spike
material_colour[i++] = make_colour_rgb(186,255,240)		//frozen
material_colour[i++] = make_colour_rgb(162,204,95)		//insect
material_colour[i++] = make_colour_rgb(225,0,0)			//dragon
material_colour[i++] = make_colour_rgb(110,121,127)		//robotic
material_colour[i++] = make_colour_rgb(127,114,94)		//muddy
material_colour[i++] = make_colour_rgb(127,55,0)		//woody
material_colour[i++] = make_colour_rgb(255,255,255)		//none

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
	cloud,
	wave,
	barrier
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
attack_type_text[i++] = "wave"
attack_type_text[i++] = "barrier"

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


sc_load_trainer_fnames()

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

globalvar player1_trainer;
globalvar player2_trainer;
player1_trainer = noone; //sc_new_trainer()
player2_trainer = noone; //sc_new_trainer()

