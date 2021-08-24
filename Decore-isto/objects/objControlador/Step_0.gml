if (start = true){
	randomzinho = irandom(3)
	 switch (randomzinho){
	 case 0:
	 global.array_buttons[global.contador] = objBtnBlue
	 break
	
	 case 1:
	 global.array_buttons[global.contador] = objBtnYellow
	 break
	 
	 case 2:
	 global.array_buttons[global.contador] = objBtnGreen
	 break
	 
	 case 3:
	 global.array_buttons[global.contador] = objBtnRed
	 break
	 
	 }
	global.contador ++
	global.contadorm = 0
	global.array_buttons[0].piscar = true
	start = false
	
	}
	
	if (perdeu = true){
	global.contador = 0
	instance_create_layer(global.btnstartx,global.btnstarty,"Instances",btnStart)
	perdeu = false
	}
	
if (keyboard_check_pressed(ord("P"))){
	start = true
}
if (keyboard_check_pressed(ord("R"))){
 	room_restart()
}

if (keyboard_check_pressed(ord("O"))){
	show_message(global.array_buttons[get_string("","")])
}
