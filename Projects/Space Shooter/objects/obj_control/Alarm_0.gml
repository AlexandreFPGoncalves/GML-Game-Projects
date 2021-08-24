 // @description Criação dos inimigos
randomize();
if(boss == false){
//-----Variavel para ver quantas vezes se vai repetir algo-----
var repetir = random_range(1,6) * global.level;
//-----------Spawnar inimigos-----------
repeat(repetir){
//-----------Set dos valores onde podem spawnar-----------
	var xx = irandom_range(32,room_width-32);
	var yy = irandom_range(-64, -1024);
	var chance = random(10) * global.level;
//-----------Criação do inimigo 2-----------
	if(chance > 25){
		var inimigo = instance_create_layer(xx,yy,"inimigos",obj_inimigo02);
		inimigo.speed = random_range(2.5,5);
	}else{
//-----------Criação do inimigo 1-----------
	var inimigo = instance_create_layer(xx,yy,"inimigos",obj_inimigo01);
	inimigo.speed = random_range(1,4);
	}
}
//-----------Tempo para voltar a repetir o alarme-----------	
alarm[0] = (random_range(2,12)* room_speed);} //maior quanto maior o level.