if timerstart = true
tim +=0.016;

if (tim >= 1){
	ready= true;
	sprite_index = spr_spikeAtk;
}

if tim >= 3{
	
	tim =0;
	ready = false;
	timerstart = false;
	image_speed=1;
	sprite_index = spr_spike;
}

if image_index >= image_number-1
image_index = image_number-1;