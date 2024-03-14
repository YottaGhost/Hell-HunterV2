ftim +=0.016;
speed = sped;
if frozen==true{
	image_blend=make_color_rgb(0,150,150);
	speed=0;
	
}

shtim +=0.016;

if ftim >=1{
frozen=false;
image_blend=make_color_rgb(255,255,255);
}

if (tipo =="melee"){
	mp_potential_step_object(obj_player.x, obj_player.y, speed, obj_parede);
}
if (tipo =="voador"){
	direction = point_direction(x,y, obj_player.x,obj_player.y)+Mod;
}


if place_meeting(x,y, obj_player){
	
	obj_player.xE = x;
	obj_player.yE = y;
	obj_player.dano(dano);
	
	
}

if (place_meeting(x,y,obj_bala)){
	var inst = instance_nearest(x,y, obj_bala);
	//var Dir = point_direction(inst.x,inst.y, x, y);
	//x += lengthdir_x(8,Dir);
	//y += lengthdir_y(8,Dir)*-1;
	
	
	if (invic == false){ 
		hp -= inst.dano;
		audio_play_sound(hitDefault,3,false)
		invic = true;
		if (obj_armas.iceb == true){
			frozen = true;	
			ftim=0;
		}
	}
	
	if instance_exists(inst)and (!instance_exists(obj_Shotgun)and(!instance_exists(obj_Light_Cannon)) and !instance_exists(obj_Bazuka)){
		inst.expire();
	}
}


if invic == true{
	tim += 0.16;
}

if tim >=0.7 {
	invic = false;
	tim =0;
}

if shtim >=2{
	
	var ch = choose("inim","wave","ball");
	
	var dir = point_direction(x,y,obj_player.x,obj_player.y);	
	if ch == "inim"{
	var inst = instance_create_layer(x,y,"Inimigos",obj_batT);
	
	}
	if ch == "ball"{
	var inst = instance_create_layer(x,y,"Inimigos",obj_ball);
	inst.direction=dir;
	}
	if ch == "wave"{
	var inst = instance_create_layer(x,y,"Inimigos",obj_wave);
	inst.direction=dir;}
	shtim =0;
}

if hp <=0{
	var a = irandom_range(1,5);
	for (var i =1; i<=a;i++){
	instance_create_layer(x+random_range(-15,15),y+random_range(-15,15),"props",obj_moeda);
	}
	obj_player.combo++;
	obj_vida.scale += 0.2;
	instance_destroy();
}