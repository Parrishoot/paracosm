/// @description Insert description here
// You can write your code in this editor
if debug_draw {

	var rect_x_size = get_grid_x_size_pixels();
	var rect_y_size = get_grid_y_size_pixels();


	draw_set_color(c_red);
	draw_rectangle(x, y, x + rect_x_size, y + rect_y_size, false);
	draw_set_color(c_white);

}

