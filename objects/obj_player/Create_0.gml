//keyboard_set_map(ord("W"), vk_up);
//
//keyboard_set_map(ord("S"), vk_down);
//keyboard_set_map(ord("D"), vk_right);
instance_create_layer(x,y,"player",obj_Crossbow);
dashPerm = true;
armasInv = ["Crossbow","vazio","vazio"]
arma_atual = 1;

xantigo =0;
yantigo =0;

upixelH = shader_get_uniform(sh_outline, "pixelH");
upixelW = shader_get_uniform(sh_outline, "pixelW");
corOut = shader_get_uniform(sh_outline, "outline_Color");

texelW = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index, 0));

comboAdd =1;

andar =1;
sala =1;

invicTim =0;
invic = false;

recuo = false;

xyvelhos = [0, 0];
i =0;
timer = 0;

hp_max = 60;

hp_atual = hp_max;

velh =0;
velv =0;

moeda = 0;

armor = 1;

firew = false;
inverted = 1;
stuck = false;

bomb= 0;
maxrevive =false;
revive =1;

combo = 0;
comboGoal =10;
comboMul=1;

maxMov =2;
movSpeedX = maxMov;
movSpeedY = maxMov;

speedMod = 1;

pointDir = direction;
coolDash = 1.5;

MaxdashNumber = 1;
dashNumber = MaxdashNumber;

waitDash =coolDash;

xE=0 
yE=0

function dano(damage){
		if (invic ==false and speed<=0){
			hp_atual -=	damage/armor;
			invic = true;
			invicTim = 0;
			audio_play_sound(hitPlayer,10,false);
			Recuo();
		}
	}
	
function salaLista() {
	list = ds_list_create();

	ds_list_add(list,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15);
}



function charms(){
	listCharms = ds_list_create();
	ds_list_add(listCharms,"Double_Dash","Armor", "Homing_Bullets","Speed_Shoes","Revive","Bigger_Health","Bigger_Combo", "Ice_Bullets");
}

function aberrations(){
	listAberr = ds_list_create();
	ds_list_add(listAberr, "Fire_Water","No_Dash","Inverted","Soaked","Gun_Stuck","Lol");
}

function guns(){
	listGun = ds_list_create();
	ds_list_add(listGun,"Minigun","Light_Cannon","Shotgun", "Bazuka");
}

charmsinv = [0,0,0,0,0,0,0,0,0,0,0];
guns();
aberrations();
salaLista();
charms();