  /// @description Insert description here

pontos += .1;	//valor para aumentar a velocidade com que se ganha pontos
// menor o valor mais lento para ganhar pontos
// maior o valos mais rapido para ganhar pontos

//passar de level

if(pontos >=plevel){
	level++;
	plevel*=1.8
	audio_play_sound(snd_levelup,6,false)};
	
layer_hspeed("bg_floor", -level-4);	
 

/*
1 = 100
2 = 200
3 = 400
4 = 800
5 = 1600
6 = 3200 
*/