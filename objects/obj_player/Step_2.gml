velh = velh*inverted;
velv = velv*inverted;

movSpeedX = maxMov;
movSpeedY = maxMov;

if (place_meeting(x-5,y,obj_parede) and (velh<0)){velh = 0;}	
if (place_meeting(x+5,y,obj_parede) and (velh>0)){velh =0;}
if (place_meeting(x,y-5,obj_parede) and (velv<0)){velv =0;}
if (place_meeting(x,y+5,obj_parede) and ((velv>0)or speed >0)){ velv =0;}

//parte do dash
x += ((velh * speedMod)*movSpeedX);
y += ((velv * speedMod)*movSpeedY);

if !place_meeting(x,y,obj_parede){
 xantigo = x;
 yantigo = y;
}else {x=xantigo; y=yantigo;}


function kill(){
	room_goto(Menu);
	if instance_exists(obj_lol)
	instance_destroy(obj_lol);
	instance_destroy(obj_armas);
	instance_destroy();
}

