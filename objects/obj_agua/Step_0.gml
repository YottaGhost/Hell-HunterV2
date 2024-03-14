if (place_meeting(x,y,obj_player)){

	obj_player.speedMod *=0.8;
	if obj_player.firew == true{		
		obj_player.dano(3);	
	}
}

image_blend = make_color_rgb(255,255,255);
if obj_player.firew == true{	
	image_blend = make_color_rgb(255,0,0);
}