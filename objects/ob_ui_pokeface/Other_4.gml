/// @desc

if not instance_exists(pokemon_id)
	exit

with instance_create_layer(bbox_left, bbox_bottom + 8 * bar_count, "UI_bar", ob_bar_health) {
	pokemon_id = other.pokemon_id
	max_value = pokemon_id.health_max
	image_xscale = (other.bbox_right - other.bbox_left) / sprite_get_width(sprite_index)
}
bar_count++
