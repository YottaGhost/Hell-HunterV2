speed -=0.04;
if speed <=0.4{
	speed=0.4}

image_angle = direction;
function expire(){
	audio_play_sound(exploiso,3,false)
	instance_create_layer(x,y,"proj",obj_explosion);
	instance_destroy();	
}


if image_yscale>=1
image_yscale= 1;

if obj_armas.homingB == true{
	
	dano = obj_armas.dano *2;
}

tim += 0.016;
if tim >=1.5 {
	expire();
}