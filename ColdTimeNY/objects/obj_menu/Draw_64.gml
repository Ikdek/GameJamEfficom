draw_clear(c_black);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_menu); 
draw_set_color(c_white);
draw_text(room_width / 2, 100, "ColdTime NY");
draw_rectangle(room_width/2 - 105, 200 - 10, room_width/2 + 105, 250 + 10, false); 


draw_set_font(fnt_button);
draw_set_color(c_gray);

if (mouse_x > room_width/2 - 100 && mouse_x < room_width/2 + 100 && mouse_y > 200 && mouse_y < 250) {
    draw_set_color(c_red);
    if (mouse_check_button_pressed(mb_left)) {
        audio_stop_sound(global.musique);
        
        global.musique = audio_play_sound(ColdTimeNY_MainTheme, 1, true);
        
        room_goto(Room1);
    }
}


draw_text(room_width / 2, 225, "JOUER");

draw_set_color(c_gray);
if (mouse_x > room_width/2 - 100 && mouse_x < room_width/2 + 100 && mouse_y > 300 && mouse_y < 350) {
    draw_set_color(c_white);
    if (mouse_check_button_pressed(mb_left)) {
        game_end();
    }
}
draw_text(room_width / 2, 325, "QUITTER");

