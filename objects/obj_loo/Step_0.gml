if !(instance_exists(obj_inim)){
	if obj_player.sala == 4 or obj_player.sala == 8{
		instance_create_layer(room_width/2,room_height/2, "props",obj_item);
	}
	instance_destroy();
}
