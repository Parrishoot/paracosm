/// @description Insert description here
// You can write your code in this editor
draw_self();



switch(combat_window_state) {

	case(COMBAT_WINDOW_STATES.WAITING):
	
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(fCombatWindow);
		
		draw_text(x, y, "...");
		
		break;
		
	case(COMBAT_WINDOW_STATES.INITIAL_DECISION):
	
		draw_options();
		
		break;

}

