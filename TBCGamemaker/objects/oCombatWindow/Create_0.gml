/// @description Insert description here
// You can write your code in this editor
enum COMBAT_WINDOW_STATES {

	WAITING,
	INITIAL_DECISION,
	COMBAT

}

combat_window_state = COMBAT_WINDOW_STATES.INITIAL_DECISION;
options = noone;

function init() {

	image_alpha = opacity;

	options[0] = noone;
	options[1] = noone;
	options[2] = noone;
	options[3] = noone;

}

function set_follow_object(par_follow_object) {

	follow_object = par_follow_object;

}

function draw_options() {

	var sprite_half_width = sprite_width / 2;
	var sprite_half_height = sprite_height / 2;

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fCombatWindow);
	
	check_draw_string(options[0][0], x - sprite_half_width + x_padding, y - sprite_half_height + y_padding, is_selected(0, 0));
	check_draw_string(options[0][1], x - sprite_half_width + x_padding, y + sprite_half_height - y_padding, is_selected(0, 1));
	check_draw_string(options[1][0], x + sprite_half_width - x_padding, y - sprite_half_height + y_padding, is_selected(1, 0));
	check_draw_string(options[1][1], x + sprite_half_width - x_padding, y + sprite_half_height - y_padding, is_selected(1, 1));

}

function check_draw_string(str_val, str_x, str_y, par_is_selected) {
	
	str_val = str_val == noone ? "-" : str_val;
	str_val = par_is_selected ? "-" + str_val + "-" : str_val;
	
	draw_text(str_x, str_y, str_val);
	
}

function is_selected(par_x, par_y) {

	return par_x == selected_option_x && par_y == selected_option_y;

}

function safe_select(par_x, par_y) {

	if options[par_x][par_y] != noone {
	
		selected_option_x = par_x;
		selected_option_y = par_y
		
	}

}

init();