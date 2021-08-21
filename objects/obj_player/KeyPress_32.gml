grab = check_grab(self)

if self.grabbing { 
	
	self.grab_obj = -1
	self.grabbing = false 
	
}
else if grab != -1 { 
	
	self.grab_obj = grab
	self.grabbing = true
	
}

show_debug_message(string(self.grabbing))
show_debug_message(string(self.grab_obj))