function scr_Sound()
{
    var _so = audio_play_sound(argument[0], 1, false);
    audio_sound_gain(_so, (oGame.sfx / 5) * 0.2, 0);
    audio_sound_pitch(_so, random_range(0.9, 1.1));
}
