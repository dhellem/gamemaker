// Vérification des touches
key_left = keyboard_check(ord("Q"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("Z"));
key_down = keyboard_check(ord("S"));

// Déplacement horizontal et vertical
var move_horizontale = key_right - key_left;
var move_vertical = key_down - key_up;

horizontale_speed = move_horizontale * move_speed;
vertical_speed = move_vertical * move_speed;

// Vérification des collisions avant de bouger (empêche de passer à travers les murs)
if (!place_meeting(x + horizontale_speed, y, Object6)) {
    x += horizontale_speed;
}
if (!place_meeting(x, y + vertical_speed, Object6)) {
    y += vertical_speed;
}

// Gestion des animations
if (horizontale_speed == 0 && vertical_speed == 0) {
    image_index = 0;
    image_speed = 0;
} else {
    image_speed = 2; // Active l'animation
}

// Changement du sprite selon la direction
if (key_down) {
    sprite_index = sprite_perso_walk_front;
}
if (key_up) {
    sprite_index = sprite_perso_walk_backward;
}
if (key_left) {
    sprite_index = sprite_perso_walk_left;
}
if (key_right) {
    sprite_index = sprite_perso_walk_right;
}