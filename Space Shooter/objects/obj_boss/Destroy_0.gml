/// @description Criar explosão

#region so ganhar Exp se for atingido
if(atingido)obj_control.expa += 100;
#endregion

#region Forma de descobrir qual a metade da sprite
var yy = (y-sprite_yoffset) + sprite_height/2;
#endregion

#region Ao morrer criar explosão
var e = instance_create_layer(x,yy,"inimigos",obj_explosao); 
e.image_xscale = 2;
e.image_yscale = 2;
#endregion