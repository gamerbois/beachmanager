if self.charge < self.max_charge { self.charge += self.solar_level / 1000 }
else { 
	
	self.charge = 0
	game = instance_find(obj_game, 0)
	game.score += points_reward
	inst = instance_create_layer(bbox_left, bbox_top, "Instances", obj_points_indicator)
	with inst {
		
		value = "+" + string(points_reward)
		
	}
	
}