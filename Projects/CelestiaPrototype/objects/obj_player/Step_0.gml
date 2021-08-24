/// @description Insert description here

#region check de teclas
var esq = keyboard_check(ord("A"));	  //Esqueda
var dir = keyboard_check(ord("D"));	  //Direita
var cima = keyboard_check(ord("W"));  //Cima
var baixo = keyboard_check(ord("S")); //baixo
var salto = keyboard_check(vk_space); //salto
#endregion


if(cima && room == rm_01){
	move_towards_point(416,608,3)
}else speed = 0;

//if(baixo && room == rm_01){
//move_towards_point(416,736,3)
//}else speed = 0;

#region movimentação
if(room != rm_01){
var velh = (dir-esq)*vel;
x += velh;

var velv = (baixo-cima)*vel;
y += velv;
}
#endregion

#region virar a imagem A ou D
if(esq){
	image_xscale = 2;
}
if(dir){
	image_xscale = -2;
}
#endregion