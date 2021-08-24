 /// @description Desenhar texto
 
//desenha a pontoação 
draw_set_font(font_pontos);
draw_set_colour(c_black);
draw_text(30,20, "PONTOS: " + string(int64(pontos)));

draw_sprite(spr_level, level-1, room_width/2,50);
