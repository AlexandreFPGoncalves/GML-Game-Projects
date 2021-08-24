/// @description Explosão

#region % drop do PowerUp
if(atingido){ obj_control.expa += 4;
#endregion

#region % drop do PowerUp
var chance = random(100);
if(chance> 95){//5% chance de drop.
	instance_create_layer(x,y,"inimigos",obj_powerup);
	}
}
#endregion