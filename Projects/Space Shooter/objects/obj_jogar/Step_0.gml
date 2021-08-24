/// @description Insert description here

if(position_meeting(mouse_x,mouse_y,self)){
	audio_play_sound(snd_hold_botao,5,false);
	instance_change(obj_jogar_hold,false);
	obj_jogar_hold.image_xscale = 1.9;
	obj_jogar_hold.image_yscale = 1.9; 
}
   