 /// @description Configuração do inimigo

#region teste para verificar se o inimigo esta dentro do ecrã
if(y >= 0 && dentro_ecra == false){
	alarm[0] = room_speed*random_range(0.5,2)
	dentro_ecra = true;
	}
#endregion

#region se sairem fora de certo Y deletar instancia
if(y>room_height+100)instance_destroy();
#endregion

#region Morrer assim que HP = 0
if(inimigo1hp <= 0){
	instance_create_layer(x,y,"inimigos", obj_explosao);
	instance_destroy(other);
}
#endregion