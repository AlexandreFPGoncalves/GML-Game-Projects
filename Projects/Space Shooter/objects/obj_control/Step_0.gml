/// @description 

#region codigo para subir de nivel.
if(expa>= explevel){
	global.level++;
	explevel*= 2;
	}
	/* 10 20 40 ...*2 ...*/
#endregion

#region Verificar a maior pontuação
if (expa > global.highestscore){
	global.highestscore = expa;
}
#endregion

#region codigo para spawnar o boss
if(global.level >= 5 && (boss == false)){
	instance_create_layer(room_width/2, -700,"inimigos",obj_boss);
	instance_destroy(obj_inimigo01);
	instance_destroy(obj_inimigo02);
	boss = true;
	audio_stop_all();
}
#endregion