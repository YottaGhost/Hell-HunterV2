if room == Main{
if (obj_player.stuck == false) or (stuckChance <=90) {
	
if tim >= firerate {

	var projAtual = instance_create_layer(x,y, "proj", proj);
	projAtual.direction = mouDir+random_range(-acc,acc);
	projAtual.dano = dano;
	tim = 0;
	audio_play_sound(sound,9,false)
	obj_reticula.image_xscale =1.7;
	obj_reticula.image_yscale =1.7;
	image_xscale =1.5;
	image_yscale =1.5;
}
}
if obj_player.stuck == true{
	stuckChance += random_range(1,10);	
}
}

