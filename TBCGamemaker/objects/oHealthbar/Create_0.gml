/// @description Insert description here
// You can write your code in this editor
enum HEALTHBAR_STATES {

	NOT_DISPLAYING,
	BEGINNING_DISPLAY,
	ENDING_DISPLAY,
	DISPLAYING,

}

healthbar_state = HEALTHBAR_STATES.DISPLAYING;


function init(par_follow_object) {

	follow_object = par_follow_object;
	image_speed = 0;

}