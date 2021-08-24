 // @description Colisão com o player
 
//-----------Ao tocar no player deletar tiro-----------

instance_change(obj_explosao,false);
 
with(other){
	audio_play_sound(snd_damage,20,false);
	obj_player.hp --;
}
//with = com
//other = Player