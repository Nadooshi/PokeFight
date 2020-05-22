///@desc sc_play_sound(sound, loop)
///@arg sound to play
///@arg loop=false

var _snd  = argument[0]
var _loop = false
if argument_count>1
	 _loop = argument[1]

if audio_exists(_snd) {
    if audio_is_playing(_snd) audio_stop_sound(_snd)
    audio_play_sound(_snd, 1, _loop)
}


