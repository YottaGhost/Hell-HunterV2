var right, left, down, up;

right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

if sala == 11{
	andar +=1
	sala=1;
}

image_yscale +=0.1;

if image_yscale>=1
image_yscale= 1;


speedMod =1;
if speed <=0{
if sprite_index == spr_player_bRun{
	sprite_index = spr_player_bIdle;
}
if sprite_index == spr_player_fRun{
	sprite_index = spr_player_fIdle;
}
//if sprite_index == spr_player_lRun{
//	sprite_index = spr_player_lIdle;
//}
}

if  (left){velh = -1;}
if (right){velh = 1;}
if (up){
	sprite_index = spr_player_bRun;
	velv = -1;
	if (left or right){
		velv = -0.77
	}
}
if (down){
	sprite_index = spr_player_fRun;
	velv = 1;
	if (left or right){
		velv = 0.77
	}
}



function Recuo(){
	if !(xE ==0) or !(yE ==0){
	direction = point_direction(xE,yE,x,y);
	speed = 10;
	xE=0;
	yE=0;
	}
}


if (!down && !up) {
	velv = 0;
}
if (!left && !right){
	velh = 0;
	}

i += 0.10;
timer += room_speed *1;

if (i >=1){
xyvelhos[0] = x;
xyvelhos[1] = y;
i=0;
}

speed -=3.5;
if speed <=0 {speed=0;}

if speed > 0 {
	if timer >=0.5{
		instance_create_layer(x+2,y+2,"player",obj_ghost);
		timer =0;
	}
}

invicTim += 0.016;
if invicTim >= 1.8 and invic == true{
	invic = false;
	
	}



if (hp_atual <=0){
	if revive ==1 and maxrevive == true{
		revive =0;
		hp_atual=hp_max;
		
		show_debug_message("revive chamou")
	}else{
		kill();
	}
}


waitDash += 0.016;
if waitDash>= coolDash and dashNumber <=0
	dashNumber=MaxdashNumber;
	
	
comboMul = (combo/10)div 1;


if combo == comboGoal*comboMul{
	if hp_atual <= hp_max{
		var teste = hp_max-hp_atual;
		if teste >=10
		hp_atual+= 10;
		else 
		hp_atual+=teste;
		combo ++;
	}
}