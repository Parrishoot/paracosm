/// @description Insert description here
// You can write your code in this editor
#region VARIABLES

enum FIGHTER_STATES {

	SPAWNING,
	DECIDING,
	LOCKED_IN,
	CALCULATING,
	DEFEATED

}

#endregion

#region FUNCS

function init(par_grid_x_coord, par_grid_y_coord) {

	

	grid_x_coord = par_grid_x_coord;
	grid_y_coord = par_grid_y_coord;
	
	var initial_grid_space = oCombatGrid.get_grid_space(grid_x_coord, grid_y_coord);
	
	var space_x = initial_grid_space.x;
	var space_y = initial_grid_space.y;
	
	x = space_x;
	y = space_y;
	
	current_health = total_health;
	
	var healthbar = instance_create_layer(x, y + 16, "UI", oHealthbar);
	healthbar.init(self);

}

#endregion