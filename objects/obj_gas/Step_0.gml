tim +=0.016;

if tim >= 3 and decay == false{
	inst = instance_create_layer(x,y,"Lol", obj_gasCloud);
	
	decay = true;
	
}

if decay == true and tim >=8{
	instance_destroy(inst);
	tim=0;
	}
