key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

var _xinput = key_right - key_left;
var _yinput = key_up - key_down;


if (!place_meeting(x + _xinput * vitesse, y, obj_wall)) {
    x += _xinput * vitesse;
}

if (!place_meeting(x, y + _yinput * vitesse, obj_wall)) {
    y -= _yinput * vitesse;
}

if (_xinput < 0) sprite_index = sprite_gauche;
if (_xinput > 0) sprite_index = sprite_droite;
if (_yinput > 0) sprite_index = sprite_haut;
if (_yinput < 0) sprite_index = sprite_bas;


if (move_x == 0 && move_y == 0) {
    game_set_speed(1, gamespeed_fps); 
} else {
	image_speed = 1;
	isTimeStopped = false;
    if (move_x < 0)  sprite_index = sprite_gauche;
	if (move_x > 0)  sprite_index = sprite_droite;
	if (move_y < 0)  sprite_index = sprite_haut;
	if (move_y > 0)  sprite_index = sprite_bas;
}
