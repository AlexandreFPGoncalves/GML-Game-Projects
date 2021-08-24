/// @description Aplicando gravidade



//Adiciona velocidade vertical (para baixo)
vspeed += 0.1;




//Limitação da velocidade
if(vspeed > velmax){	//Limite para baixo
	vspeed = velmax};
//Se vspeed(velocidade vertical) for maior que a velmax(5), então
//vspeed vai ser igual a velmax(5);

if(vspeed < -velmax){	//Limite para cima
	vspeed = -velmax};
	
//Se vspeed(velocidade vertical) for menor que a -velmax(-5), então
//vspeed vai ser igual a -velmax(-5);