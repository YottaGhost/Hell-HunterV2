var pc;
pc = (obj_player.hp_atual/obj_player.hp_max) * 100;
draw_healthbar(16,32,54,220,pc,c_black,c_red,c_green,3,true,true);


draw_set_font(monogramG);


draw_text_color(60*2,270*2,string(obj_player.andar-1)+string(obj_player.sala),c_white,c_white,c_white,c_white,255);
draw_text_color(10,240,string(obj_player.hp_atual)+ "/"+string(obj_player.hp_max),c_white,c_white,c_white,c_white,255);
draw_text_color(60*2,225*2,string(obj_player.moeda),c_white,c_white,c_white,c_white,255);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(monogramGG);
var combo = draw_text_transformed_color(view_wport[0]-84,view_hport[0]/2,string(obj_player.combo-1),scale*obj_sb_options.mult,scale*obj_sb_options.mult,0,c_red,c_red,c_red,c_red,255)


for (var i=0; i <= array_length(obj_player.charmsinv)-1;i++){
	if obj_player.charmsinv[i] != 0{
		var sprite = "spr_"+string(obj_player.charmsinv[i])
		 var spr = asset_get_index(sprite)
		var dsp = draw_sprite_ext(spr,0,(950)-32*i,view_hport[0]-128,obj_sb_options.mult*2,obj_sb_options.mult*2,0,c_white,1);	
		
		
	}	
}