function scr_sound(snd)
{
	audio_play_sound(snd, 1, false)
	audio_sound_gain(snd, global.sfx_volume, 0)
}
function scr_music(_snd) {
	if !audio_is_playing(_snd)
		audio_play_sound(_snd, 1, true);
	audio_sound_gain(_snd, global.music_volume, 0)	
}