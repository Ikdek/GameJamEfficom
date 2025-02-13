if (!variable_global_exists("musique")) {
    global.musique = -1; 
}


if (!audio_is_playing(global.musique)) {
    global.musique = audio_play_sound(ColdTimeNY_MainTheme, 1, true);
}