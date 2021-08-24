/// @description Insert description here


delay ++;
contador ++;
//-----------Contador para os Estados do Boss-----------
if(contador >= room_speed*6){
	estado = irandom(2);
	contador = 0;
}
#region Quando o Boss morre
if(bosshp <= 0){
	instance_destroy();
	audio_stop_all();
	room_goto(rm_ranking);
}
#endregion
//-----------Estado 4 do Boss-----------
if(estado == 3){
	if(y < 160){
		y += 5;
	}else{
		estado = 0;
		delay = 0;
		contador = 0;
		audio_play_sound(snd_boss,1,true);
	}
}
//-----------Estado 1 do Boss-----------
if(estado == 0){
	if(delay > 45){
		instance_create_layer(x-26,y+70,"inimigos",obj_tiro_inimigo02);
		delay = 0;}
		if(move == true){
		x -= 4;
	}
	if(move == false){
		x += 4;
	}	
	if(x >= 700) move = true;
	if(x <= 128) move = false;
}
//-----------Estado 2 do Boss-----------
if(estado == 1){
	if(delay == 35){
		instance_create_layer(x+95,y,"inimigos",obj_tiro_inimigo01);
	}
	if(delay > 40){
		instance_create_layer(x-95,y,"inimigos",obj_tiro_inimigo01);
		delay = 0;}
	if(move == true){
		x -= 2.5;
	}
	if(move == false){
		x += 2.5;
	}	
	if(x >= 700) move = true;
	if(x <= 128) move = false;
}
//-----------Estado 3 do Boss-----------
if(estado == 2){
	if(delay > 50){
		instance_create_layer(x-26,y+70,"inimigos",obj_tiro_inimigo02);
		delay = 0;
	}
	if(delay == 35){
		instance_create_layer(x+95,y,"inimigos",obj_tiro_inimigo01);
	}
	if(delay == 40){
	instance_create_layer(x-95,y,"inimigos",obj_tiro_inimigo01);
	}
}
