function spawn_crab() 
{
	
	randomize()
	side = int64(random_range(0, 2))
	y_index = int64(random_range(0, 4))
	
	if side == 0 {
		
		inst = instance_create_layer(-120, 240 + (120 * y_index), "Instances", obj_crab)
		with (inst) {
			
			move_direction = 0
			
		}
		
	} else if side == 1 {
		
		inst = instance_create_layer(room_width, 240 + (120 * y_index), "Instances", obj_crab)
		with (inst) {
			
			move_direction = 1
			
		}
		
	}
}