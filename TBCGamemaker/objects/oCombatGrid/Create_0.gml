/// @description Insert description here
// You can write your code in this editor

#region VARIABLES

grid_x_size = grid_x_length_override == 0 ? grid_size : grid_x_length_override;
grid_y_size = grid_y_length_override == 0 ? grid_size : grid_y_length_override;

grid = noone;

#endregion

#region FUNCS

function init() {
	
	// Center the grid
	x = floor((room_width - get_grid_x_size_pixels()) / 2);
	y = floor((room_height - get_grid_y_size_pixels()) / 2) - (10 * (max(grid_y_size - 4, 0)));
	
	
	// Set the grid spaces
	if (grid == noone) {
	
		grid = ds_grid_create(grid_x_size, grid_y_size);
		
		for(var i = 0; i < grid_x_size; i++) {
		
			for(var j = 0; j < grid_y_size; j++) {
			
				var new_space = instance_create_layer(x, y, "Grid_Spaces", oCombatSpace);
				new_space.init(i, j)
			
				ds_grid_add(grid, i, j, new_space);
				
			}
			
		}
	
	}
	
}

function get_grid_x_size_coords() {
	
	return grid_x_size;
	
}

function get_grid_x_size_pixels() {

	return grid_x_size * grid_space_sprite_size + (grid_x_size + .5) * grid_space_padding;

}

function get_grid_y_size_coords() {
	
	return grid_y_size;
	
}

function get_grid_y_size_pixels() {

	return grid_y_size * grid_space_sprite_size + (grid_y_size + .5) * grid_space_padding;

}
	
function set_grid_space_occupied(par_x, par_y, par_object) {

	var grid_space = ds_grid_get(grid, par_x, par_y);
	
	if par_object == oPlayerCombatController {
		
		grid_space.set_player_occupied();
		
	}
	
	else if par_object == oEnemyCombatController {
		
		grid_space.set_enemy_occupied();
		
	}
	
	else {
	
		// TODO: add more
	
	}

}
	
function get_grid_space(par_x, par_y) {

	return ds_grid_get(grid, par_x, par_y);

}


#endregion

init();
