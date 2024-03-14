
if place_meeting(x,y,obj_player){
	if inst ==0 {
		inst = instance_create_layer(x,y-16,"props",obj_item_desc2);
			inst.descp = desc;
			inst.cost = cost;
	}
	if keyboard_check(ord("E")) and obj_player.moeda >= cost{
		obj_player.moeda -=cost;
		audio_play_sound(pick,3,false)
		
		if item == "Potion"
			obj_player.hp_atual = obj_player.hp_max;
		if item == "Clear"
			obj_charm_aberration.closeAberr();
		
		if (tipo =="gun") {
			if obj_player.armasInv[1] == "vazio"{
				obj_player.armasInv[1]= item
			}
			else if obj_player.armasInv[2] == "vazio"{
				obj_player.armasInv[2]= item
			}
			else obj_player.armasInv[obj_player.arma_atual]= item
		}
		if tipo == "charm"{
			for (var i =0; i <= array_length(obj_player.charmsinv)-1; i++){
				if obj_player.charmsinv[i]	==0{
					obj_player.charmsinv[i] = item;
					break;
				}
			}
			}
			if inst !=0{
				inst.kill = true;
				inst =0;
			}
			instance_destroy();
	}
}
else {
	//show_debug_message(inst)
	if inst !=0{
		inst.kill = true;
		inst =0;
	}
}