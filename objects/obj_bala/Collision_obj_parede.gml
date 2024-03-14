var inst = instance_nearest(x,y,obj_parede);

if (inst != -4){
	var obje = object_get_name( inst.object_index);

if !(obje == "obj_estatua"){
	expire();
}
}else {expire();}