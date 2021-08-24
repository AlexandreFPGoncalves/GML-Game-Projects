/// @description Configuração do inimigo

//teste para ver se o inimigo esta no ecrã

#region mexer a nave e verifica se a nave esta dentro do ecra
if(y >= 0 && dentro_ecra == false){
	alarm[0] = room_speed*random_range(0.5,2)
	dentro_ecra = true;
	}

if(dentro_ecra == true && moving == false){
	if(y > room_height/3){
		if(x > room_width/2){
			hspeed = -4;
			moving = true;
		}else{ 
			hspeed = 4; 
			moving = true;
			}
	}
}
#endregion

#region se sairem fora de certo Y deletar instancia
if(y>room_height+100)instance_destroy();
#endregion

#region Morrer assim que HP = 0
if(inimigo2hp <= 0){
	instance_create_layer(x,y,"inimigos", obj_explosao);
	instance_destroy(other);
}
#endregion