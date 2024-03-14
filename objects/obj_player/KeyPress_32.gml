if (waitDash >=coolDash) and dashNumber>0 and dashPerm ==true{
direction = point_direction(xyvelhos[0],xyvelhos[1], x,y);
audio_play_sound(dashsd,9,false)
speed = 25;
dashNumber --;

if sprite_index==spr_player_bRun or sprite_index==spr_player_bIdle{
	sprite_index = spr_player_bDash;
}
if sprite_index==spr_player_fRun or sprite_index==spr_player_fIdle{
	sprite_index = spr_player_fDash;
}


invic = true;
if dashNumber<=0{
	waitDash =0;
}
}