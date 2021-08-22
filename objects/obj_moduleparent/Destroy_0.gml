if self.pulling {
	
	player = instance_find(obj_player, 0)
	player.grabbing = false
	player.grab_obj = noone
	player.image_index = 0

}