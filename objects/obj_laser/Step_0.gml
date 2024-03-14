speed = 0;
image_yscale+=0.05;
image_angle = direction;
function expire(){
	instance_destroy();	
}


if image_yscale>=1
image_yscale= 1;

if obj_armas.homingB == true{
	
	dano = obj_armas.dano *2;
}

tim += 0.016;
if tim >=0.5 {
	expire();
}