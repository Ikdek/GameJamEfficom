var offset_distance = 40;

var spawn_x = x + lengthdir_x(offset_distance, image_angle);
var spawn_y = y + lengthdir_y(offset_distance, image_angle);

var bullet = instance_create_layer(spawn_x, spawn_y, "MainCharacter", obj_bullet);
bullet.direction = image_angle;

if (obj_main_character.isTimeStopped) {
    bullet.speed = 0;
} else {
    bullet.speed = 3;
}
