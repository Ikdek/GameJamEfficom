var bullet = instance_create_layer(x, y, "MainCharacter", obj_bullet);
bullet.direction = image_angle;

if (obj_main_character.isTimeStopped){
	bullet.speed = 0;
}else{
	bullet.speed = 3
}
