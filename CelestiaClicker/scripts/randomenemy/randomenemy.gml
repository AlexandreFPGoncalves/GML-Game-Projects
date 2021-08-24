randomize();

switch(irandom(2))

	{
		case 0 :  instance_create_layer(864,188,"inimigos",obj_inimigo_02); break;
		case 1 :  instance_create_layer(864,288,"inimigos",obj_inimigo_01); break;
		case 2 :  instance_create_layer(864,350,"inimigos",obj_inimigo_03); break;
	}