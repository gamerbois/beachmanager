// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_grab(grabbing_obj) 
{
	if instance_place(self.x, self.y - grabbing_obj.move_distance, obj_moduleparent) {
		
		return instance_place(self.x, self.y - grabbing_obj.move_distance, obj_moduleparent)
		
	} else {
		return -1
	}
}