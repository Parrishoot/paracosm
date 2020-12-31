/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(image_alpha);

draw_healthbar(x-sprite_width/2 + 1,
			   y-sprite_height/2 + 1,
			   x+sprite_width/2 - 1,
			   y+sprite_height/2 - 2,
			   (follow_object.current_health / follow_object.total_health) * 100,
			   back_health_col,
			   min_health_col,
			   max_health_col,
			   0,
			   true,
			   false);
			   
draw_self();

draw_set_alpha(1);