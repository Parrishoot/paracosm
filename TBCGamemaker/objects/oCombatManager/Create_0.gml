/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
#region VARIABLES

enum COMBAT_STATES {
	
	INIT,
	ROUND_BEGINNING,
	CHOOSING,
	PHASE_BEGINNING,
	CALCULATING,
	EXECUTING,
	PHASE_ENDING,
	SUCCESS,
	FAILURE
	
}

combat_state = COMBAT_STATES.INIT;

#endregion

#region FUNCS

function init() {
	
	instance_create_layer(0, grid_top_offset, "Grid", oCombatGrid);
	
	combat_state = COMBAT_STATES.ROUND_BEGINNING;
	
}


#endregion

init();