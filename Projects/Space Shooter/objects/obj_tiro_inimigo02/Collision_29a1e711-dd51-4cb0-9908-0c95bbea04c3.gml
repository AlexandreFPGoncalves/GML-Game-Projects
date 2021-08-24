/// @description COlisão com o player

//-----------Ao tocar no player deletar tiro-----------
instance_destroy();

//-----------Ao tocar no player Remover 1HP-----------

with(other){
	audio_play_sound(snd_damage,20,false);
	obj_player.hp --;
}
//with = com
//other = Player