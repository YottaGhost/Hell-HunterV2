image_index = 1;

if iDi ==1 {
	view_wport[0] = 506;
	view_hport[0] = 288;
	window_set_size(view_wport[0],view_hport[0]);
	obj_sb_options.mult = 1;
}
if iDi ==2 {
	view_wport[0] = 506*2;
	view_hport[0] = 288*2;
	window_set_size(view_wport[0],view_hport[0]);
	obj_sb_options.mult = 2;
}
if iDi ==3 {
	view_wport[0] = 506*3;
	view_hport[0] = 288*3;
	window_set_size(view_wport[0],view_hport[0]);
	obj_sb_options.mult = 3;
}
window_set_fullscreen(false);
if iDi ==4{
	window_set_fullscreen(true);	
	obj_sb_options.mult = 3.5;
}

obj_sb_options.Clear(iDi);


