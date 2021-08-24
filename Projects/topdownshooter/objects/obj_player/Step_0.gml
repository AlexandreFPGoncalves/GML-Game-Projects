 /// @description Insert description here
 
#region Checkar se o Utilizador esta a premir uma tecla
var esq   =   keyboard_check(ord("A"));	//Esquerda
var dir   =   keyboard_check(ord("D"));	//Direita
var cima  =  keyboard_check(ord("W"));	//Cima
var baixo =	keyboard_check(ord("S"));	//Baixo
#endregion
 
 #region Movimento Horizontal
var velh = (dir-esq)*vel;	//(0-0)*3 = 0;
x += velh;	//aplicação da velocidade.
#endregion

#region Movimento Vertical
var velv = (baixo-cima)*vel; //(0-0)*3 = 0;
y += velv;	//aplicação da velocidade.
#endregion

#region Fazer com que o player olhe para o mouse
direction = point_direction(x,y,mouse_x,mouse_y);
image_angle = direction;
#endregion