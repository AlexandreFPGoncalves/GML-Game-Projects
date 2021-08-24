/// @description Inicialização do Tiro
 
//-------------Direção para onde o tiro vai-------------
direction = 90;
/*direita = 0;
cima = 90;
esquerda = 180;
baixo = 270;
direita 360;*/
//--------------------Speed do tiro--------------------
speed = 15;
//---Alterar a escala do Tiro assim que ele é creado---
image_xscale = 2;
image_yscale = 1;
//--------------Set up a uma variavel de cor----------------
 cor = choose(c_aqua,c_teal,c_blue,c_green);
//---------Alarme 0 ocorre de 1.5 em 1.5 secs---------
 alarm[0] = 1.5;