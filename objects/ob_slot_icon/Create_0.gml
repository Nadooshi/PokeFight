/// @desc

// Inherit the parent event
event_inherited();

map = noone

fr_speed = sprite_get_speed(sp_slot_fireball) / (game_get_speed(gamespeed_microseconds) * 0.01)
fr_count = sprite_get_number(sp_slot_fireball)
fr_index = random(1.0)
