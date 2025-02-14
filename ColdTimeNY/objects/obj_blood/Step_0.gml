if (obj_main_character.isTimeStopped){
	image_speed = 0;
}else{
	
	if (image_index >= image_number - 1) {
    image_index = image_number - 1;
    image_speed = 0;
	}else{
		image_speed = 1;
	}
}

