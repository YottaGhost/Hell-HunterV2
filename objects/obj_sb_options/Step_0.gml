x+= sp;


if x >= 512
x=512;

if x <= 96
x = 96;

if (instance_exists(obj_player)) and (obj_player.sala==10){
	if !audio_is_playing(bossMusic){
	audio_play_sound(bossMusic, 5, true);
	audio_stop_sound(mainMusic)
	}
}else{
	if !audio_is_playing(mainMusic){
	audio_play_sound(mainMusic, 5, true);
	audio_stop_sound(bossMusic)
	}
}