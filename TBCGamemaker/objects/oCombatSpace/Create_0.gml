/// @description Insert description here
// You can write your code in this editor
#region VARIABLES

enum SPACE_STATES {

	EMPTY,
	PLAYER_OCCUPIED,
	ENEMY_OCCUPIED

}

space_state = noone;

#endregion

#region FUNCS

function init(par_grid_x_coord, par_grid_y_coord) {
	
	grid_x_coord = par_grid_x_coord;
	grid_y_coord = par_grid_y_coord;
	
	set_x_offset();
	set_y_offset();
	
	space_state = SPACE_STATES.EMPTY;
	
	// image_index = 
}

function set_x_offset() {

	x = oCombatGrid.x + (sprite_width * (grid_x_coord + .5)) + ((grid_x_coord + 1) * oCombatGrid.grid_space_padding);

}

function set_y_offset() {
	
	y = oCombatGrid.y + (sprite_height * (grid_y_coord + .5)) + ((grid_y_coord + 1) * oCombatGrid.grid_space_padding);
	
}

function set_player_occupied() {
	
	space_state = SPACE_STATES.PLAYER_OCCUPIED;
	
}

function set_enemy_occupied() {
	
	space_state = SPACE_STATES.ENEMY_OCCUPIED;
	
}

function set_unoccupied() {
	
	space_state = SPACE_STATES.EMPTY;
	
}

#endregion