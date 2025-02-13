if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}

if (place_meeting(x, y, obj_wall)) {
    if (bounce_count < max_bounces) {
        direction += 180;
        bounce_count += 1;
    } else {
        instance_destroy();
    }
}

if (place_meeting(x, y, obj_main_character) & bounce_count != 0 ) {
	obj_main_character.vie -= 1;
	instance_destroy();
}

if (place_meeting(x, y, obj_en1)) {
	obj_en1.vie_en1 -= 1;
	instance_destroy();
}


if (obj_main_character.isTimeStopped){
	speed = 0;
}else{
	speed = 3;
}