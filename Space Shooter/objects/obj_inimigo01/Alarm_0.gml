  /// @description Configuração do tiro
// You can write your code in this editor

instance_create_layer(x,y,"inimigos",obj_tiro_inimigo01);

alarm[0] = room_speed*random_range(1.5,3);