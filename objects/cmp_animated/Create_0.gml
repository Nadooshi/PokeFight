/// @desc 

start_frame = 0
stop_frame  = 0
frame_count = 0
sprite_speed = 0

anim_ended = false

dirframe[d.Right] = 0
dirframe[d.Up   ] = 0
dirframe[d.Left ] = 0
dirframe[d.Down ] = 0

p_looped = true
p_4dir   = false
p_stable = false  // not turning
p_ray	 = false
init = false

start_value = 0
end_value = 0
mid_value = 0
phase = 0
fraction = 0  // 0..1 when switch to another phase ((timeout-init_timeout) / init_timeout)
prev_frac = 0
init_timeout = 0
