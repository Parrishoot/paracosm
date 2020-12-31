/// @description Insert description here
// You can write your code in this editor

switch(healthbar_state) {

	case HEALTHBAR_STATES.NOT_DISPLAYING:
		break;
		
	case HEALTHBAR_STATES.BEGINNING_DISPLAY:
		
		image_alpha += fade_speed;
		if image_alpha >= 1 healthbar_state = HEALTHBAR_STATES.DISPLAYING;
		break;
		
	case HEALTHBAR_STATES.ENDING_DISPLAY:
		
		image_alpha -= fade_speed;
		if image_alpha <= 0 healthbar_state = HEALTHBAR_STATES.NOT_DISPLAYING;
		break;
		
	case HEALTHBAR_STATES.DISPLAYING:
	
		if image_speed != 0 and irandom_range(0, sheen_chance > 80) == 0 image_speed = 1;
		break;
	
}