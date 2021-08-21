// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_movement(moving_obj, move_direction, mode) 
{
	
	if argument[2] == 1 {
		
		if move_direction == 0 {
			
			return instance_place(moving_obj.x + moving_obj.move_distance, moving_obj.y, obj_moduleparent)
			
		} else if move_direction == 1 {
			
			return instance_place(moving_obj.x - moving_obj.move_distance, moving_obj.y, obj_moduleparent)
			
		} else {
			
			return -1
			
		}
	
	} else if moving_obj.grabbing == false {
		
		if move_direction == 1 {
			
			return instance_place(moving_obj.x, moving_obj.y - moving_obj.move_distance, obj_collidable)
			
		} else if move_direction == 2 {
			
			return instance_place(moving_obj.x + moving_obj.move_distance, moving_obj.y, obj_collidable)
			
		} else if move_direction == 3 {
			
			return instance_place(moving_obj.x, moving_obj.y + moving_obj.move_distance, obj_collidable)
			
		} else if move_direction == 4 {
			
			return instance_place(moving_obj.x - moving_obj.move_distance, moving_obj.y, obj_collidable)
			
		} else {
			
			return -1
			
		}
		
	} else if moving_obj.grab_obj.sprite_width <= 120 {
		
		if move_direction == 1 {
			
			return instance_place(moving_obj.x, moving_obj.y - (moving_obj.move_distance * 2), obj_collidable)
			
		} else if move_direction == 2 {
			
			top = instance_place(moving_obj.x + moving_obj.move_distance, moving_obj.y - moving_obj.move_distance, obj_collidable)
			bot = instance_place(moving_obj.x + moving_obj.move_distance, moving_obj.y, obj_collidable)
			
			if top <= 0 and bot <= 0 { return -1 }
			return 1
			
		} else if move_direction == 3 {
			
			return instance_place(moving_obj.x, moving_obj.y + moving_obj.move_distance, obj_collidable)
			
		} else if move_direction == 4 {
			
			top = instance_place(moving_obj.x - moving_obj.move_distance, moving_obj.y - moving_obj.move_distance, obj_collidable)
			bot = instance_place(moving_obj.x - moving_obj.move_distance, moving_obj.y, obj_collidable)
			
			if top <= 0 and bot <= 0 { return -1 }
			return 1
			
		} else {
			
			return -1
			
		}
	
	} else if moving_obj.grab_obj.sprite_width > 120 {
		
		if move_direction == 1 {
			
			left = instance_place(moving_obj.grab_obj.x, moving_obj.grab_obj.y - moving_obj.move_distance, obj_collidable)
			right = instance_place(moving_obj.grab_obj.x + moving_obj.move_distance, moving_obj.grab_obj.y - moving_obj.move_distance, obj_collidable)
			
			if left <= 0 and right <= 0 { return -1 }
			return 1
			
		} else if move_direction == 2 {
			
			top = instance_place(moving_obj.grab_obj.x + (moving_obj.move_distance * 2), moving_obj.grab_obj.y, obj_collidable)
			bot = instance_place(moving_obj.x + moving_obj.move_distance, moving_obj.y, obj_collidable)
			
			if top <= 0 and bot <= 0 { return -1 }
			return 1
			
		} else if move_direction == 3 {
			
			left = instance_place(moving_obj.grab_obj.x, moving_obj.grab_obj.y + moving_obj.move_distance, obj_collidable)
			right = instance_place(moving_obj.grab_obj.x + moving_obj.move_distance, moving_obj.grab_obj.y + moving_obj.move_distance, obj_collidable)
			char = instance_place(moving_obj.x, moving_obj.y + moving_obj.move_distance, obj_collidable)
			
			if left <= 0 and right <= 0 and char <= 0 { return -1 }
			return 1
			
		} else if move_direction == 4 {
			
			top = instance_place(moving_obj.grab_obj.x - moving_obj.move_distance, moving_obj.grab_obj.y, obj_collidable)
			bot = instance_place(moving_obj.x - moving_obj.move_distance, moving_obj.y, obj_collidable)
			
			if top <= 0 and bot <= 0 { return -1 }
			return 1
			
		} else {
			
			return -1
			
		}
		
	}
	
}