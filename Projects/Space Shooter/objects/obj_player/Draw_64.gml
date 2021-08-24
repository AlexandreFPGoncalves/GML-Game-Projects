/// @description Desenhar no GUI

//-------Desenhar as vidas-------
var n = 1;
//repeat(hp){	
//	draw_sprite_ext(sprite_index,image_index,30*n,90,.3,.3,image_angle,c_white,.7)
//	n++;
//};
repeat(qtd_escudo){
	draw_sprite_ext(spr_escudo,0,12*n,120,.3,.3,image_angle,c_white,.8);
	n++;
}
