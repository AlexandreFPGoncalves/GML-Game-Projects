   /// @description Inicialização do Tiro
// You can write your code in this editor
//-----------Speed Do tiro-----------
speed = 7;
//-----------Direção do tiro-----------
//-----------Se o player existir----------
if(instance_exists(obj_player)){
//-----------Disparar para o player-----------
direction =	point_direction(x,y,obj_player.x,obj_player.y);
}else direction = 270; //senão disparar para baixo.
//--------------Tocar Musica do tiro--------------
audio_play_sound(snd_tiro_inimigo,5,false); 
//-----------Rotação da imagem-----------
//image_angle = 180;
//--------------Set up a uma variavel de cor----------------
//cor = choose(c_fuchsia,c_purple);


//-----------Direções-----------
/*direita = 0;
//esquerda = 180;
//baixo = 270;
 direita 360;*/
 
 

 
