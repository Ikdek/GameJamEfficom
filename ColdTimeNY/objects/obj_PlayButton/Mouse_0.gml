if (mouse_check_button_pressed(mb_left)) {
        audio_stop_sound(global.musique);
 
        global.musique = audio_play_sound(ColdTimeNY_MainTheme, 1, true);
        image_speed = 1
        room_goto(Room1);
}