// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_movement(moving_obj, move_direction) 
{
	if move_direction == 1 {
		return instance_place(self.x, self.y - moving_obj.move_distance, obj_moduleparent)
	} else if move_direction == 2 {
		return instance_place(self.x + moving_obj.move_distance, self.y, obj_moduleparent)
	} else if move_direction == 3 {
		return instance_place(self.x, self.y + moving_obj.move_distance, obj_moduleparent)
	} else if move_direction == 4 {
		return instance_place(self.x - moving_obj.move_distance, self.y, obj_moduleparent)
	} else {
		return -1
	}
}