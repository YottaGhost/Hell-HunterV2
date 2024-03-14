mult = 2;
inst=[0,0,0,0];
for (var i=1; i<=4; i++;){
	
	inst[i-1]=instance_create_layer(x+(64*i),y+32, "Coisa", obj_checkbox);
	inst[i-1].iDi = i;
	
}

function Clear(idi){
	
	for(a =1; a<=4;a++;){
		if a != idi
			inst[a-1].image_index = 0;
	}
	
}

sp = 7;

if !audio_group_is_loaded(adEffects)
{
    audio_group_load(adEffects);
}


