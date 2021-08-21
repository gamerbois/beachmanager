// up
if self.move_direction == 1 and move_lock == true {
	
	self.y -= self.move_distance / self.move_frames;
	
	if self.move_lock_time >= self.move_frames - 1 {
		
		self.move_lock = false;
		self.move_lock_time = 0;
		self.move_direction = 0;
		
	} else {
		
		self.move_lock_time += 1;
		
	}
	
// right
} else if self.move_direction == 2 and move_lock == true {
	
	self.x += self.move_distance / self.move_frames;;
	
	if self.move_lock_time >= self.move_frames - 1 {
		
		self.move_lock = false;
		self.move_lock_time = 0;
		self.move_direction = 0;
		
	} else {
		
		self.move_lock_time += 1;
		
	}
	
// down
} else if self.move_direction == 3 and move_lock == true {

	self.y += self.move_distance / self.move_frames;;
	
	if self.move_lock_time >= self.move_frames - 1 {
		
		self.move_lock = false;
		self.move_lock_time = 0;
		self.move_direction = 0;
		
	} else {
		
		self.move_lock_time += 1;
		
	}
	
// left
} else if self.move_direction == 4 and move_lock == true {
	
	self.x -= self.move_distance / self.move_frames;;
	
	if self.move_lock_time >= self.move_frames - 1 {
		
		self.move_lock = false;
		self.move_lock_time = 0;
		self.move_direction = 0;
		
	} else {
		
		self.move_lock_time += 1;
		
	}
	
}