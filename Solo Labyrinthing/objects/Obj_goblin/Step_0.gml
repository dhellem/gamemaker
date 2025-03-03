var distance_activation = 200;  // Par exemple, 200 pixels

// Vérifier si le joueur est à une distance suffisante
if (point_distance(x, y, Obj_player.x, Obj_player.y) < distance_activation) {
    // Le gobelin se déplace vers le joueur
    var dir = point_direction(x, y, Obj_player.x, Obj_player.y);
    var vitesse = 2;  // Vitesse du gobelin, ajustable

    // Calculer le mouvement
    x += lengthdir_x(vitesse, dir);
    y += lengthdir_y(vitesse, dir);
    
    // Changer l'animation en fonction de la direction du mouvement
    if (dir > 45 && dir < 135) {
        sprite_index = sprite_goblin_back;
    } else if (dir > 135 && dir < 225) {
        sprite_index = sprite_goblin_left;
    } else if (dir > 225 && dir < 315) {
        sprite_index = sprite_goblin_front;
    } else {
        sprite_index = sprite_goblin_right;
    }
    
} else {
    // Le gobelin reste inactif et n'affiche pas d'animation de mouvement
	image_index = 0;
}