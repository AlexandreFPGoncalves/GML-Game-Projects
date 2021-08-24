/// @description Explosão


#region so ganhar Exp se for atingido
if(atingido)obj_control.expa += 2;
#endregion

#region % drop do PowerUp
var chance = random(100);
if(chance> 98.5){//1.5% chance de drop.
	instance_create_layer(x,y,"inimigos",obj_powerup);
	}
#endregion