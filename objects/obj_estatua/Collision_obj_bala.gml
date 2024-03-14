var inst = instance_nearest(x,y,obj_bala)

if inst !=-4{
hp -= inst.dano;
if !instance_exists(obj_Bazuka) and !instance_exists(obj_Shotgun) {
		inst.expire();
}
}
if hp<=0{
	instance_destroy();
}