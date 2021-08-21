// up
if self.move_direction == 1 and move_lock == true {
	
	self.y -= 40;
	
	if self.move_lock_time >= 2 {
		
		self.move_lock = false;
		self.move_lock_time = 0;
		self.move_direction = 0;
		
	} else {
		
		self.move_lock_time += 1;
		
	}
	
// right
} else if self.move_direction == 2 {
	
	self.x += 40;
	
	if self.move_lock_time >= 2 {
		
		self.move_lock = false;
		self.move_lock_time = 0;
		self.move_direction = 0;
		
	} else {
		
		self.move_lock_time += 1;
		
	}
	
// down
} else if self.move_direction == 3 {

	self.y += 40;
	
	if self.move_lock_time >= 2 {
		
		self.move_lock = false;
		self.move_lock_time = 0;
		self.move_direction = 0;
		
	} else {
		
		self.move_lock_time += 1;
		
	}
	
// left
} else if self.move_direction == 4 {
	
	self.x -= 40;
	
	if self.move_lock_time >= 2 {
		
		self.move_lock = false;
		self.move_lock_time = 0;
		self.move_direction = 0;
		
	} else {
		
		self.move_lock_time += 1;
		
	}
	
}