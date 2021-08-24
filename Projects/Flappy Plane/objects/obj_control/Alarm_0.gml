  /// @description Criar as montanhas

//configuração inicial minima e maxima
var yy = irandom_range(64,224)	//vertical
var xx = room_width + irandom_range(50,100);	//horizontal

instance_create_layer(xx+10, yy,"instance_obstaculos",obj_mountains_up);
//m1.hspeed = -level-4;
instance_create_layer(xx, yy+160,"instance_obstaculos",obj_mountains_down);
//m2.hspeed = -level-4;

var tm = 1/(1+(level*0.1));

alarm[0] = random_range(tm,3) * room_speed;