/// @description Insert description here
// You can write your code in this editor
switch(space_state) {

	
	case SPACE_STATES.EMPTY:
		image_alpha = .3;
		image_speed = 1;
		break;
	
	case SPACE_STATES.PLAYER_OCCUPIED:
		image_alpha = 1;
		image_speed = 1;
		break;
		
	case SPACE_STATES.ENEMY_OCCUPIED:
		image_alpha = .7;
		image_speed = 1;
		break;

	default:
		break;

}