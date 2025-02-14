// Vérifier que le joueur existe avant de faire quoi que ce soit
var player = instance_nearest(x, y, Obj_player);
if (!instance_exists(player)) exit;

// Créer un chemin
var path = path_add();
if (mp_grid_path(grid, path, x, y, player.x, player.y, false)) {
    path_start(path, my_speed, path_action_stop, false); // Suivre le chemin
} else {
    path_delete(path); // Si aucun chemin trouvé, ne rien faire
}