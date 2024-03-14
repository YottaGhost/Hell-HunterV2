if room == Main{



if play.sala ==10{starta = true;}

if play.sala == 3 and play.andar !=1{
	if starta == true{
	startAberr();	
		starta = false;
	}
}
if play.sala == 5 and play.andar ==1{
	if starta == true{
		startAberr();	
		starta = false;
	}
}





function startAberr(){
	ds_list_shuffle(lab);	
	var aberration = ds_list_find_value(lab, ds_list_size(lab) - 1);
	ds_list_delete(lab, ds_list_size(lab)-1);
	aberr = aberration
	if aberration == "Fire_Water"{
		play.firew = true;
	}
	if aberration == "No_Dash"{
		play.dashPerm =false;
	}
	if aberration == "Inverted"{
		play.inverted = -1;
	}
	if aberration == "Soaked"{
		play.maxMov = 1;
	}
	if aberration == "Gun_Stuck"{
		play.stuck = true;
	}
	if aberration == "Lol"{
		instance_create_layer(50,50,"Lol", obj_lol);
	}
	
	var inst = instance_create_layer(256,72,"Lol",obj_aberration)
	inst.abe = aberration;
}

function closeAberr(){
	
	if aberr == "Fire_Water"{
		play.firew = false;
	}
	if aberr == "No_Dash"{
		play.dashPerm =true;
	}
	if aberr == "Inverted"{
		play.inverted = 1;
	}
	if aberr == "Soaked"{
		play.maxMov = 2;
	}
	if aberr == "Gun_Stuck"{
		play.stuck = false;
	}
	if aberr == "Lol"{
		if instance_exists(obj_lol)
			instance_destroy(obj_lol);
	}
}




for (var i =0; i<= array_length(play.charmsinv)-1; i++;){
		if play.charmsinv[i] == "Homing_Bullets"{
			obj_armas.homingB = true;
		}
		if play.charmsinv[i] == "Ice_Bullets"{
			obj_armas.iceb = true;
		}
		if play.charmsinv[i] == "Revive"{
			play.maxrevive= true;
		}
		if play.charmsinv[i] == "Double_Dash"{
			play.MaxdashNumber = 2;
		}
		if play.charmsinv[i] == "Armor"{
			play.armor = 2;
		}
		if play.charmsinv[i] == "Speed_Shoes" and aberr != "Soaked"{
			play.maxMov = 4;
		}
		if play.charmsinv[i] == "Bigger_Health"{
			if play.hp_max<100{
				play.hp_atual = 100;
			}
			play.hp_max = 100;
		}
		if play.charmsinv[i] == "Bigger_Combo"{
			play.comboAdd = 2;
		}
}
}

if instance_exists(obj_player){
	if play.sala == 1 {
		closeAberr();	
	}
}