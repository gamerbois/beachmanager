function spawn_wave() 
{
	
	randomize()
	x_index = int64(random_range(0, 16))
	size = int64(random_range(0, 3))
	
	if size == 0 {
		
		instance_create_layer(120 * x_index, -840, "Instances", obj_wave_small)
		instance_create_layer(120 * x_index, 0, "Instances", obj_wave_indicator)
		
	} else if size == 1 {
		
		instance_create_layer(120 * x_index, -840, "Instances", obj_wave_med)
		instance_create_layer(120 * x_index, 0, "Instances", obj_wave_indicator)
		
	} else if size == 2 {
		
		instance_create_layer(120 * x_index, -840, "Instances", obj_wave_large)
		instance_create_layer(120 * (x_index + 1), 0, "Instances", obj_wave_indicator)
		
	}
	
}