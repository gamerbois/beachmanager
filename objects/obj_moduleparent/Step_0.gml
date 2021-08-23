game = instance_find(obj_game, 0)

if self.y >= game.shade {
	
	self.solar_level = 0
	
} else if self.y >= game.p_shade {
	
	self.solar_level = 1
	
} else if self.y < game.p_shade {
	
	self.solar_level = 2
	
}

image_index = self.solar_level

draw_text_transformed(self.x, self.y + 60, string(self.solar_level), self.x + 120, self.y + 180, 1)