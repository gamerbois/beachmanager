if self.move_lock = false and check_movement(self, 4) <= 0 {
	self.move_lock = true;
	self.move_direction = 4;
}