if(global.gold >= 250){
	global.gold -=250;
	global.PS += 10;
	instance_create_layer(810,288,"pets",obj_raven);
	instance_destroy();
	}