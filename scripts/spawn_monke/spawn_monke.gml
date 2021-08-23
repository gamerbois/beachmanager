function spawn_monke() 
{
	
	randomize()
	x_index = int64(random_range(0, 16))
	
	inst = instance_create_layer(120 * x_index, -120, "Instances", obj_seamonkey)
	
}