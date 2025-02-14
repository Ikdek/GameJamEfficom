var player = obj_main_character;
var range = 180;
var move_speed = 1;
var fire_rate = 80;

var distance_to_player = point_distance(x, y, player.x, player.y);

if (obj_main_character.isTimeStopped) {
    image_speed = 0;
} else {
    image_speed = 1;
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
        var new_x = x + lengthdir_x(move_speed, move_direction);
        var new_y = y + lengthdir_y(move_speed, move_direction);

        if (!place_meeting(new_x, new_y, obj_wall)) {
            x = new_x;
            y = new_y;
        } else {
            var angle_offset = 180;
            var new_direction1 = move_direction - angle_offset;
            var new_direction2 = move_direction + angle_offset;

            var new_x1 = x + lengthdir_x(move_speed, new_direction1);
            var new_y1 = y + lengthdir_y(move_speed, new_direction1);
            var new_x2 = x + lengthdir_x(move_speed, new_direction2);
            var new_y2 = y + lengthdir_y(move_speed, new_direction2);

            if (!place_meeting(new_x1, new_y1, obj_wall)) {
                x = new_x1;
                y = new_y1;
            } else if (!place_meeting(new_x2, new_y2, obj_wall)) {
                x = new_x2;
                y = new_y2;
            }
        }
    }
}

if (place_meeting(x, y, obj_bullet)) {
	audio_play_sound(A_eA_eA_eSound,1,false)
    vie_en2 -= 1;
}

if (vie_en2 <= 0) instance_destroy();
