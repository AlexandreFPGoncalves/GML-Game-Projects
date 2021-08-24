/// @description Diminuir o escudo

image_index --;

if (image_index < 0){
	instance_destroy();
}else alarm[0] = room_speed*1;