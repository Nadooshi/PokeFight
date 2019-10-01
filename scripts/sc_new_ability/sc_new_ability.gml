
var result = ds_map_create()

// -1 = none
ds_map_add(result, "weather",	 0)     // sp_weather frame index
ds_map_add(result, "biome" ,	 0)     // sp_biome frame index
ds_map_add(result, "daytime",	 0)     // sp_timeday frame index
ds_map_add(result, "temperature" , 0)   // sp_temperature frame index
ds_map_add(result, "state",	 0)         // frame index
ds_map_add(result, "in_state",	 0)     // frame index

ds_map_add(result, "for",	  1)        // 0 - pokemon; 1 - action
ds_map_add(result, "name" , "") 

ds_map_add(result, "weather_sign",	 0)  // sp_weather frame index
ds_map_add(result, "biome_sign" ,	 0)  // sp_biome frame index
ds_map_add(result, "daytime_sign",	 0)  // sp_timeday frame index
ds_map_add(result, "temperature_sign" , 0)   // sp_temperature frame index
ds_map_add(result, "in_state_sign",	 0)  // frame index

ds_map_add(result, "state_rate",	0)  
ds_map_add(result, "multiply",		0)  
ds_map_add(result, "multiply_rate",	0)

ds_map_add(result, "state_value",	0)


return result
