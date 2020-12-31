/// @description Insert description here
// You can write your code in this editor
switch (combat_state) {

	case COMBAT_STATES.ROUND_BEGINNING:
	
		with oFighterCombatController {
		
			oCombatGrid.set_grid_space_occupied(grid_x_coord, grid_y_coord, self.object_index);
			
			show_debug_message(object_get_name(self.object_index));
		
		}
	
		break;

}