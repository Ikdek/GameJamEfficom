var offset_x = 50;
var offset_y = 10;
var i;
var scale = 0.5;

for (i = 0; i < vie; i++) {
    draw_sprite_ext(spr_heart, 0, offset_x + i * 30, offset_y, scale, scale, 0, c_white, 1);
}



if (vie < 2) {

    draw_sprite_ext(spr_bloodyScreen, 0, 0, 0, 1,1, 0, c_white, 1);
}
