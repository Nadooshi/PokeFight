/// @desc

wind_power = 0
wind_dir = 0   // radians
wind_d_dir = 0
wind_period = 1
overcast_period = 300

alarm_set(0, wind_period)
alarm_set(1, overcast_period)

caption = "0 - m/s"

oX = x
oY = y
