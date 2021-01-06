/// @description Insert description here
// You can write your code in this editor
options = noone;
sh_current_time = shader_get_uniform(shWave, "time");


function init() {

	/*
	
	!!!NOTE!!!
	Define your own init to set up your options array in the child class
	
	E.g.
	
	image_alpha = opacity;
	
	options[0][0] = "option 1" etc.
	*/

}



function set_follow_object(par_follow_object) {

	follow_object = par_follow_object;

}

function draw_default_menu() {

	var sprite_half_width = sprite_width / 2;
	var sprite_half_height = sprite_height / 2;

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(font);
	
	check_draw_string(options[0][0], x - sprite_half_width + x_padding, y - sprite_half_height + y_padding, is_selected(0, 0));
	check_draw_string(options[0][1], x - sprite_half_width + x_padding, y + sprite_half_height - y_padding, is_selected(0, 1));
	check_draw_string(options[1][0], x + sprite_half_width - x_padding, y - sprite_half_height + y_padding, is_selected(1, 0));
	check_draw_string(options[1][1], x + sprite_half_width - x_padding, y + sprite_half_height - y_padding, is_selected(1, 1));

}

function init_wave_shader() {

	shader_set(shWave);
	shader_set_uniform_f(sh_current_time, current_time);

}

function check_draw_string(str_val, str_x, str_y, par_is_selected) {
	
	str_val = str_val == noone ? "-" : str_val;
	
	if par_is_selected {
	
		init_wave_shader();
		str_val = "-" + str_val + "-"
	
	}
	
	draw_text(str_x, str_y, str_val);
	
	shader_reset();
	
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

function selection_string_rep() {

	return string(selected_option_x) + "," + string(selected_option_y);

}

init();