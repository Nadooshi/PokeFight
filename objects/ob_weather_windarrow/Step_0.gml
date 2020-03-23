/// @desc
if instance_exists(ob_weather_control) {
	with ob_weather_control {
		other.wind_dir = wind_dir
	}
} else
	instance_destroy()