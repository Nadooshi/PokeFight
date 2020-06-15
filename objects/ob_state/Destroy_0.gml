/// @desc 

var i = ds_list_find_index(pokemon_id.states, id)
if i != -1
	ds_list_delete(pokemon_id.states, i);

for (var  i=0; i<ds_list_size(pokemon_id.states); i++)
with pokemon_id.states[| i]
	index = i
