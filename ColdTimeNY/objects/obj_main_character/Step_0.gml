var move_x = 0;
var move_y = 0;

if (keyboard_check(vk_left))  move_x = -1;
if (keyboard_check(vk_right)) move_x = 1;
if (keyboard_check(vk_up))    move_y = -1;
if (keyboard_check(vk_down))  move_y = 1;

var longueur = point_distance(0, 0, move_x, move_y);
if (longueur > 0) {
    move_x /= longueur;
    move_y /= longueur;
}

x += move_x * vitesse;
y += move_y * vitesse;

if (move_x < 0)  sprite_index = sprite_gauche;
if (move_x > 0)  sprite_index = sprite_droite;
if (move_y < 0)  sprite_index = sprite_haut;
if (move_y > 0)  sprite_index = sprite_bas;

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
