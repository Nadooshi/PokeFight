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

p_looped = false
p_4dir   = false
p_stable = false  // not turning
p_ray	 = false
init = false

sx = 0
sy = 0
