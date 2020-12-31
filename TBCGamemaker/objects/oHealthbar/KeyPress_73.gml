/// @description Insert description here
// You can write your code in this editor
switch(healthbar_state) {

	case HEALTHBAR_STATES.NOT_DISPLAYING:
		healthbar_state = HEALTHBAR_STATES.BEGINNING_DISPLAY;
		break;
		
	case HEALTHBAR_STATES.DISPLAYING:
		
		healthbar_state = HEALTHBAR_STATES.ENDING_DISPLAY;
		break;
	
}