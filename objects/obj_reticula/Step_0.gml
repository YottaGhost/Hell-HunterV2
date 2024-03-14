x = mouse_x
y = mouse_y

window_set_cursor(cr_none);

if room == Menu{
	sprite_index = spr_cursor;
}
else{sprite_index = spr_reticula;}

image_xscale -= 0.04;
image_yscale -= 0.04;

if ((image_xscale  <=1)or (image_yscale  <=1)){
	image_xscale = 1;
	image_yscale =1;
}