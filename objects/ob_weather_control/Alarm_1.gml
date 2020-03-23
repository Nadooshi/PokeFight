/// @desc create sky cloud

var _sz = 1.5 + random(1.5)
var _x = (view_xport[0] + 320) - cos(other.wind_dir + random(0.2)) * (700 + image_xscale*_sz)
var _y = (view_yport[0] + 180) - sin(other.wind_dir + random(0.2)) * (400 + image_yscale*_sz)
with instance_create_layer(_x, _y, "Particles", ob_weather_skycloud) {
	image_index = irandom_range(0, image_number)
	image_alpha = 0.35
	image_xscale = _sz
	image_yscale = _sz
	image_angle = random(359)
}

var _overcast = (overcast_period/2 + irandom(overcast_period))*(3-wind_power)
alarm_set(1, _overcast)


