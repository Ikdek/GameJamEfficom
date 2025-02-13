if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

if (place_meeting(x, y, obj_wall)) {
    instance_destroy();
}

if (obj_main_character.isTimeStopped){
	speed = 0;
}else{
	speed = 3;
}