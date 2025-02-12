var joueur = obj_main_character; 

	if (!joueur.isTimeStopped) {
		
		var dist = point_distance(x, y, joueur.x, joueur.y);

		if (dist < distance_detection) {
			var direction_x = joueur.x - x;
			var direction_y = joueur.y - y;
			var longueur = point_distance(0, 0, direction_x, direction_y);
        
			if (longueur > 0) {
				direction_x /= longueur;
				direction_y /= longueur;
			}

        x += direction_x * vitesse;
        y += direction_y * vitesse
        if (direction_x < 0)  sprite_index = sprite_gauche;
        if (direction_x > 0)  sprite_index = sprite_droite;
        if (direction_y < 0)  sprite_index = sprite_haut;
        if (direction_y > 0)  sprite_index = sprite_bas;
		
		if (direction_x != 0 | direction_y) image_speed = 1;
		}
	}else
	{
		image_speed = 0;
	}


