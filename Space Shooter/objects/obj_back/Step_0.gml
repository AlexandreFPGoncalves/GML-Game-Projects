 /// @description Insert description here

if(position_meeting(mouse_x,mouse_y,self)){
	audio_play_sound(snd_hold_botao,5,false);
	instance_change(obj_back_hold,false);
	obj_back_hold.image_xscale = 1.1;
	obj_back_hold.image_yscale = 1.1; 
}
 