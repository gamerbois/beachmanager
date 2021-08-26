if self.charge < self.max_charge { self.charge += self.solar_level / 1000 }
else { 
	
	inst = instance_create_layer(bbox_left, bbox_top, "Instances", obj_points_indicator)
	with inst {
		
		value = "+" + string(self.points_reward)
		game = instance_find(obj_game, 0)
		game.score += self.points_reward
		
	}
	
}