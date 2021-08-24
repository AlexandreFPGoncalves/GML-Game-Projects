 /// @description Configuração do player

#region Checkar se o Utilizador esta a premir uma tecla
var esq =   keyboard_check(ord("A"));	//Esquerda
var dir =   keyboard_check(ord("D"));	//Direita
//var cima =  keyboard_check(ord("W"));	//Cima
//var baixo =	keyboard_check(ord("S"));	//Baixo
var tiroc = mouse_check_button_released(mb_left); //W
var escudo = keyboard_check_pressed(ord("E")); //E
#endregion

#region Aumentar nivel dos tiros
if(keyboard_check_pressed(ord("X"))) leveltiro++;
if(keyboard_check_pressed(ord("Z"))) leveltiro--;
#endregion

#region limitação do movimento do player
x = clamp (x,32,room_width-32);
#endregion

#region Criação do escudo
if(escudo && qtd_escudo > 0){
	instance_create_layer(x,y,"instances",obj_escudo);
	qtd_escudo --;
}
#endregion

 #region Movimento Horizontal
var velh = (dir-esq)*vel;	//(0-0)*3 = 0;
x += velh;	//aplicação da velocidade.
#endregion

#region Movimento Vertical
//var velv = (baixo-cima)*vel; //(0-0)*3 = 0;
//y += velv;	//aplicação da velocidade.
#endregion

#region Fazer com que o player olhe para o mouse //Not Using
//direction = point_direction(x,y,mouse_x,mouse_y);
//image_angle = direction-90;

#endregion

#region tiros 
#region Conf.Tiro1
if(leveltiro == 1){
	if(tiroc) instance_create_layer(x,y,"instances", obj_tiro01);
#endregion
#region Conf.Tiro2
	}else if(leveltiro == 2){
		if(tiroc)
		{ 
			var t = instance_create_layer(x+sprite_width/2,y,"instances", obj_tiro02);
			t.hspeed = 4;
			var t = instance_create_layer(x-sprite_width/2,y,"instances", obj_tiro02);
			t.hspeed = -4;}
#endregion
#region Conf.Tiro3
	}else if(leveltiro == 3){
		if(tiroc){ 
			instance_create_layer(x,y-32,"instances", obj_tiro01);
			var t = instance_create_layer(x+sprite_width/2,y,"instances", obj_tiro02);
			t.hspeed = 4;
			var t = instance_create_layer(x-sprite_width/2,y,"instances", obj_tiro02);
			t.hspeed = -4;}
#endregion
#region Conf.Tiro4
	}else if(leveltiro == 4){
		if(tiroc){
			var val = 10;
			repeat (3){
				var t = instance_create_layer(x,y-32,"instances", obj_tiro01);
				t.direction = 90+val;
				t.image_angle = val;
				val -= 10;}}
#endregion
#region Conf.Tiro5
	}else if(leveltiro == 5){
		if(tiroc){
			var val = 10; 
			repeat (3){
				var t = instance_create_layer(x,y,"instances", obj_tiro01);
				t.direction = 90+val;
				t.image_angle = val;
				val -= 10;}
			var t = instance_create_layer(x+sprite_width/2,y,"instances", obj_tiro02);
			t.hspeed = 4;
			var t = instance_create_layer(x-sprite_width/2,y,"instances", obj_tiro02);
			t.hspeed = -4;}}
#endregion
#region Se houver um disparo, tocar som do tiro
if(tiroc){
	audio_play_sound(snd_tiro_player,10,false)
}
#endregion
#endregion


#region Se o player chegar a 0 HP deletar player
if(hp <= 0){
	audio_play_sound(snd_gameover,10,false);
	instance_destroy();
}
#endregion