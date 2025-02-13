var player = obj_main_character;
var range = 200;
var move_speed = 1;
var fire_rate = 30;

var distance_to_player = point_distance(x, y, player.x, player.y);

if (distance_to_player < range) {
    if (fire_rate_counter == 0) {
        var bullet = instance_create_layer(x, y, "MainCharacter", obj_bullet);
        bullet.direction = point_direction(x, y, player.x, player.y);
        bullet.speed = 5;
        fire_rate_counter = fire_rate;
    } else {
        fire_rate_counter -= 1;
    }

    var move_direction = point_direction(x, y, player.x, player.y);
    x += lengthdir_x(move_speed, move_direction);
    y += lengthdir_y(move_speed, move_direction);
}

if (vie_en1 == 0) show_debug_message("AIE");;