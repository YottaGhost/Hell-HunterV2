andar =0;
if obj_player.andar >=2{
	andar = obj_player.andar;
}
scoreIn = (obj_player.sala + (10*andar)) *2;

for (var i=0; scoreIn >0; i++){
	
	var a = random_range(-8,8);
	
	var inim = choose(3,6,13,25,35);
	
	if inim <=scoreIn{
		
		if inim == 3{
			instance_create_layer(x+a,y+a, "inimigos",obj_bat);
		}
		if inim == 6{
			instance_create_layer(x+a,y+a, "inimigos",obj_demon);
		}
		if inim == 13{
			instance_create_layer(x+a,y+a, "inimigos",obj_batT);
		}
		if inim == 25{
			instance_create_layer(x+a,y+a, "inimigos",obj_demonT);
		}
		if inim == 35{
			instance_create_layer(x+a,y+a, "inimigos",obj_skull);
		}
		
		scoreIn -= inim;
		show_debug_message("valor tirado pro inimigo");
		show_debug_message(inim);
		show_debug_message("score atual");
		show_debug_message(scoreIn);
	
	}
	if scoreIn <=2{
	break;
	}
	
}