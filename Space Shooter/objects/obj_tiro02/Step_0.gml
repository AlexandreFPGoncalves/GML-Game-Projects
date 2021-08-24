/// @description Configuração do tiro 2

//---Mesmo criando um novo evento, continua a herdar as confs do Pai---
event_inherited();
//---Criar efeito zigzag, nao deixando passar dos limites ---
if (x != clamp(x, xstart-30, xstart+30)){
	hspeed *= -1;
};


