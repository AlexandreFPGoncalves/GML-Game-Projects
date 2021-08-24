/// @description Melhorias de imagem

//-----------Desenhar a sprite novamente-----------
draw_self();
//-----------Mistura as cores todas-----------
gpu_set_blendmode(bm_add);
//-----------Mistura as cores todas-----------
draw_sprite_ext(sprite_index, image_index,x,y,image_xscale+1,image_yscale+.5,image_angle, cor, .5);
//-----------Coloca as cores normais-----------
gpu_set_blendmode(bm_normal);