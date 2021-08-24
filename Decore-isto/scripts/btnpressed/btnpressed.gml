global.playerresposta[global.playerrespostacontador] = argument0
if (global.playerresposta[global.playerrespostacontador] = global.array_buttons[global.playerrespostacontador]){
	global.playerrespostacontador ++
	audio_play_sound(argument1,0,false)
	if (global.playerrespostacontador = global.contador){
		alarm[1] = 30
	} 
}else {
	objControlador.perdeu = true
	global.playerturn = false
	audio_play_sound(sndError,0,false)
	}