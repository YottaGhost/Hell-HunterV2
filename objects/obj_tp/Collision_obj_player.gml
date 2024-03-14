

if obj_player.andar ==3 and obj_player.sala ==10 {
	instance_destroy(obj_armas);
	instance_destroy(obj_player);
	room_goto(Credits);	
	
}
else{
obj_player.sala +=1;
room_goto(Load);
}
