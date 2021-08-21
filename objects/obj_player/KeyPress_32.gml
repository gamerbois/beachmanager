grab = check_grab(self)

if self.grabbing { 
	
	self.grab_obj.pulling = false
	self.grab_obj = noone
	self.grabbing = false 
	
}

else if grab != noone {
	
	self.grab_obj = grab
	self.grabbing = true
	grab_obj.pulling = true
	
}

show_debug_message(grab_obj)