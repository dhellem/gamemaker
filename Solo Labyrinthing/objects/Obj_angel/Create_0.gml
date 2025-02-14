grid_size = 32; 
grid = mp_grid_create(0, 0, room_width div grid_size, room_height div grid_size, grid_size, grid_size);
mp_grid_add_instances(grid, Obj_wall, false); 
