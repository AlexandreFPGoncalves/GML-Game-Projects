 /// @description Configuração do tiro
// You can write your code in this editor

//-------Verificar a altura do player-------
if(instance_exists(obj_player)){
if(y+96 < obj_player.y){ //se estiver abaixo do player não atira.
instance_create_layer(x,y,"inimigos",obj_tiro_inimigo02);
	}
}
alarm[0] = room_speed*random_range(2,5);