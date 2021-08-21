if self.move_lock = false and (check_movement(self, 1) <= 0 or self.grab_obj != noone) {
	self.move_lock = true;
	self.move_direction = 1;
}