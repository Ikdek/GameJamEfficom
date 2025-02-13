var key_left = keyboard_check(ord("Q"));
var key_right = keyboard_check(ord("D"));
var key_up = keyboard_check(ord("Z"));
var key_down = keyboard_check(ord("S"));

var _xinput = key_right - key_left;
var _yinput = key_down - key_up;

if (!place_meeting(x + _xinput * vitesse, y, obj_wall)) {
    x += _xinput * vitesse;
}

if (!place_meeting(x, y + _yinput * vitesse, obj_wall)) {
    y += _yinput * vitesse;
}

if (_xinput < 0) sprite_index = sprite_gauche;
if (_xinput > 0) sprite_index = sprite_droite;
if (_yinput < 0) sprite_index = sprite_haut;
if (_yinput > 0) sprite_index = sprite_bas;

if (_xinput == 0 && _yinput == 0) {
    image_speed = 0; 
	isTimeStopped = true;
} else {
    image_speed = 1;
    isTimeStopped = false;
}

if (vie < 1) game_restart();
