// MOVEMENT

if self.move_lock = false and self.move_direction = 0 and check_movement(self, 0, 3) <= 0 {
	
	self.move_lock = true
	self.attack_timer = 0
	self.move_count += 1
	
} else if self.move_lock = false and self.move_direction = 1 and check_movement(self, 1, 3) <= 0 {
	
	self.move_lock = true
	self.attack_timer = 0
	self.move_count += 1
	
} else if check_movement(self, 0, 2) > 0 or check_movement(self, 1, 2) > 0  {  
	
	self.attack_timer += 1
	
	attack(instance_place(self.x, self.y - self.move_distance, obj_moduleparent))
	if sprite_width > 230 attack(instance_place(self.x + self.move_distance, self.y - self.move_distance, obj_moduleparent))
	if sprite_width > 350 attack(instance_place(self.x + (self.move_distance * 2), self.y - self.move_distance, obj_moduleparent))
	
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
if self.move_count == 6 + (self.beach_coverage * 2) {
	
	attack(self)
	
}


// DIRECTION CHANGER AND SPEED CONTROLLER
if self.move_count == 2 { self.move_frames = 30 }
else if self.move_count == 4 + self.beach_coverage { 
	
	self.move_direction = 0
	self.move_frames = 10
	
}