// MOVEMENT

if self.move_lock = false and check_movement(self, 1, 2) <= 0 {
	
	self.move_lock = true
	self.attack_timer = 0
	self.move_count += 1
	
} else if check_movement(self, 1, 2) > 0 { 
	
	self.attack_timer += 1
	
	if self.attack_timer >= 200 and self.move_direction == 0 { attack(instance_place(self.x, self.y - self.move_distance, obj_moduleparent)) }
	else if self.attack_timer >= 200 and self.move_direction == 1 { attack(instance_place(self.x, self.y + self.move_distance, obj_moduleparent)) }
	
}

	// up
if self.move_direction == 0 and move_lock == true {
	
	self.y -= self.move_distance / self.move_frames;
	
	if self.move_lock_time >= self.move_frames - 1 {
		
		self.move_lock = false;
		self.move_lock_time = 0;
		
	} else {
		
		self.move_lock_time += 1;
		
	}
	
	// down
} else if self.move_direction == 1 and move_lock == true {
	
	self.y += self.move_distance / self.move_frames;
	
	if self.move_lock_time >= self.move_frames - 1 {
		
		self.move_lock = false;
		self.move_lock_time = 0;
		
	} else {
		
		self.move_lock_time += 1;
		
	}
	
}


// DIE OFF MAP
if self.y > room_width + 121 or self.y < -241 {
	
	attack(self)
	
}


// SPRITE SETTER
if self.move_count == 3 and image_index != 1 { image_index = 1 }
else if self.move_count == 4 and sprite_index != spr_sea_monkey { 
	
	sprite_index = spr_sea_monkey 
	image_speed = 1
	self.move_frames = 15
	
}