/// @desc Return to caught pokemon list
with frame_pokemon {
	visible = false
	event_perform(ev_other, ev_user0)
}
sc_switch_view_pokemons()
room_height = ob_init_trainer_setup.height_pokemon_list

