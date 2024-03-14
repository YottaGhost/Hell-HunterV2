image_yscale+= 0.3;
if image_yscale>=1{
	image_yscale=1;
	ready= true;	
}
tim+=0.016;
if tim >=6
instance_destroy();