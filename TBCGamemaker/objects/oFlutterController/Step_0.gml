/// @description Insert description here
// You can write your code in this editor
frame_counter++;

if frame_counter > flutter_spawn_frequency {
	
	frame_counter = 0;
	
	var flutter_count = instance_number(oFlutter)
	
	for(var i = 0; i < flutter_spawn_number; i++) { 
		
		if flutter_count < max_flutters {
			instance_create_layer(0, 0, "Flutters", oFlutter);
			flutter_count++;
		}
	}
	
}