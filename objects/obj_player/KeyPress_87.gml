if self.move_lock = false and (check_movement(self, 1) <= 0) {
	self.move_lock = true;
	self.move_direction = 1;
}