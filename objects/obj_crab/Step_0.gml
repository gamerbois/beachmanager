// MOVEMENT

if self.move_lock = false and (check_movement(self, 0, 1) <= 0) {
	
	self.move_lock = true
	self.attack_timer = 0
	
} else if check_movement(self, 0, 1) > 0 { 
	
	self.attack_timer += 1
	
	if self.attack_timer >= 200 and self.move_direction == 0 { attack(instance_place(self.x + self.move_distance, self.y, obj_moduleparent)) }
	else if self.attack_timer >= 200 and self.move_direction == 1 { attack(instance_place(self.x - self.move_distance, self.y, obj_moduleparent)) }
	
}

	// right
if self.move_direction == 0 and move_lock == true {
	
	self.x += self.move_distance / self.move_frames;
	
	if self.move_lock_time >= self.move_frames - 1 {
		
		self.move_lock = false;
		self.move_lock_time = 0;
		
	} else {
		
		self.move_lock_time += 1;
		
	}
	
	// left
} else if self.move_direction == 1 and move_lock == true {
	
	self.x -= self.move_distance / self.move_frames;
	
	if self.move_lock_time >= self.move_frames - 1 {
		
		self.move_lock = false;
		self.move_lock_time = 0;
		
	} else {
		
		self.move_lock_time += 1;
		
	}
	
}


// DIE OFF MAP
if self.x > room_width {
	
	attack(self)
	
}