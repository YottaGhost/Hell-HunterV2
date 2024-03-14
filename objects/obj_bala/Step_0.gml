speed = 12;

image_angle = direction;
function expire(){
	instance_destroy();	
}




if obj_armas.homingB == true{
	
	var target =  instance_nearest(x,y,obj_inim);
	show_debug_message(target);
	if (target !=-4){
	direction = point_direction(x,y,target.x,target.y);
	}
}