
var maxA = 2;
if armasInv[2] == "vazio"{
	maxA = 1;
}
if armasInv[1] == "vazio"{
	maxA=0;
}

arma_atual +=1;
if arma_atual >maxA{
	arma_atual=0;
}
audio_play_sound(changesd,5,false)
instance_destroy(obj_armas);
var arma = "obj_"+string(armasInv[ arma_atual]);
instance_create_layer(x,y, "player", asset_get_index(arma));
