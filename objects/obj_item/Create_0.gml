charmL = obj_player.listCharms;
gunL = obj_player.listGun;
tipo = "a"
inst =0;

ds_list_shuffle(charmL);
ds_list_shuffle(gunL);

if ((random_range(1,100) <=65)or ds_list_empty(gunL)) and !ds_list_empty(charmL){
	
	item = 	ds_list_find_value(charmL, ds_list_size(charmL) - 1);
	ds_list_delete(charmL, ds_list_size(charmL)-1);
	tipo = "charm"
}
else{
	item = ds_list_find_value(gunL, ds_list_size(gunL) - 1);
	ds_list_delete(gunL, ds_list_size(gunL)-1);
	tipo = "gun";
}


sprite_index = asset_get_index("spr_"+string(item));
show_debug_message(item)
show_debug_message(tipo)
desc = "a"

if item =="Minigun"{
	desc = "Fires at a HIGH speed rate but does LESS damage"	
}
if item =="Crossbow"{
	desc = "Fires a bolt at SLOW pace but does BIG damage"	
}
if item =="Light_Cannon"{
	desc = "Fire a laser at SLOW pace but does MASSIVE damage"	
}
//if item =="Saber"{
//	desc = "Attacks at MELEE range but attacks FAST"	
//}
if item =="Shotgun"{
	desc = "Attacks at CLOSE range but has a WIDE projectile"	
}
if item =="Bazuka"{
	desc = "Attacks with a EXPLOSIVE shell that does MASSIVE damage"	
}

if item== "Homing_Bullets"{
	desc = "Make bullets seek the closest enemy";
}
if item == "Ice_Bullets"{
	 desc = "Frezees enemys for a short amount of time";
}
if item == "Revive"{
	desc = "Revives you at full healt one time"
}
if item == "Double_Dash"{
	desc = "Makes you dash 2 times in a row"
}
if item == "Armor"{
	desc = "Cuts damage taken in half"
}
if item == "Speed_Shoes"{
	desc = "Doubles your speed";
}
if item == "Bigger_Health"{
	desc = "Increase your health"
}
if item == "Bigger_Combo"{
	desc = "Multiplies your combo by 2X"
}
if item == "Bomb_Dash"{
	desc = "Drops a cluster of bombs when dashing"
}