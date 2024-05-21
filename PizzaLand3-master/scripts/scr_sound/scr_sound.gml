function scr_sound()
{
	var snd = argument[irandom((argument_count - 1))]
	audio_play_sound(snd, 1, false)
	audio_sound_gain(snd, global.sfx_volume, 0)
}
function scr_music() {
	var snd = argument[irandom((argument_count - 1))]
	audio_play_sound(snd, 1, true);
	audio_sound_gain(snd, global.music_volume, 0)	
}