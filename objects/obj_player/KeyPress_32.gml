grab = check_grab(self)

if self.move_lock == false and self.move_direction == 0 {

	if self.grabbing { 
	
		self.grab_obj.pulling = false
		self.grab_obj = noone
		self.grabbing = false 
		self.image_index = 0
	
	}

	else if grab != noone {
	
		self.grab_obj = grab
		self.grabbing = true
		grab_obj.pulling = true
		self.image_index = 1
	
	}

	show_debug_message(grab_obj)

}